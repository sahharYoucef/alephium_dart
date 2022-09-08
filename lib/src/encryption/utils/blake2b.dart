import 'dart:typed_data';

class _BlakeContext {
  Uint8List b;
  Uint32List h;
  int c;
  int t;
  int outLen;

  _BlakeContext(
      {required this.b,
      required this.h,
      required this.c,
      required this.t,
      required this.outLen});
}

class Blake2b {
  Blake2b(
      {required Uint8List input,
      this.key,
      int outLen = 64,
      this.salt,
      Uint8List? personal}) {
    _blakeInit(key: key, outLen: outLen, salt: salt, personal: personal);
    _blake2bUpdate(input);
    hash = _blake2bFinal();
  }

  late Uint8List hash;
  final Uint8List? salt;
  final Uint8List? key;

  late _BlakeContext _context;

  final _parameterBlock = Uint8List(64);

  _blakeInit(
      {Uint8List? key, int outLen = 64, Uint8List? salt, Uint8List? personal}) {
    if (outLen == 0 || outLen > 64) {
      throw Exception('Illegal output length, expected 0 < length <= 64');
    }
    if (key != null && key.length > 64) {
      throw Exception('Illegal key, expected Uint8Array with 0 < length <= 64');
    }
    if (salt != null && salt.length != 16) {
      throw Exception('Illegal salt, expected Uint8Array with length is 16');
    }
    if (personal != null && personal.length != 16) {
      throw Exception(
          'Illegal personal, expected Uint8Array with length is 16');
    }
    _context = _BlakeContext(
      b: Uint8List(128),
      h: Uint32List(16),
      c: 0,
      t: 0,
      outLen: outLen,
    );
    _parameterBlock.fillRange(0, 64, 0);
    _parameterBlock[0] = outLen;
    if (key != null) {
      _parameterBlock[1] = key.length;
    }
    _parameterBlock[2] = 1; // fanout
    _parameterBlock[3] = 1; // depth
    if (salt != null) _parameterBlock.setAll(32, salt.toList());
    if (personal != null) _parameterBlock.setAll(48, personal.toList());
    for (var i = 0; i < 16; i++) {
      _context.h[i] = _BLAKE2B_IV32[i] ^ _B2B_GET32(_parameterBlock, i * 4);
    }

    if (key != null) {
      _blake2bUpdate(key);
      _context.c = 128;
    }
  }

  _blake2bUpdate(Uint8List input) {
    for (var i = 0; i < input.length; i++) {
      if (_context.c == 128) {
        // buffer full ?
        _context.t = _context.t + _context.c; // add counters
        _context = _blake2bCompress(false); // compress (not last)
        _context.c = 0; // counter to zero
      }
      _context.c = _context.c++;
      _context.b[_context.c++] = input[i];
    }
  }

  // Compression function. 'last' flag indicates last block.
// Note we're representing 16 uint64s as 32 uint32s
  final _v = Uint32List(32);
  final _m = Uint32List(32);
  _blake2bCompress(bool last) {
    var i = 0;

    // init work variables
    for (i = 0; i < 16; i++) {
      _v[i] = _context.h[i];
      _v[i + 16] = _BLAKE2B_IV32[i];
    }

    // low 64 bits of offset
    _v[24] = _v[24] ^ _context.t;
    _v[25] = _v[25] ^ (_context.t ~/ 0x100000000);
    // high 64 bits not supported, offset may not be higher than 2**53-1

    // last block flag set ?
    if (last) {
      _v[28] = ~_v[28];
      _v[29] = ~_v[29];
    }

    // get little-endian words
    for (i = 0; i < 32; i++) {
      _m[i] = _B2B_GET32(_context.b, 4 * i);
    }

    // twelve rounds of mixing
    // uncomment the DebugPrint calls to log the computation
    // and match the RFC sample documentation
    // util.debugPrint('          m[16]', m, 64)
    for (i = 0; i < 12; i++) {
      // util.debugPrint('   (i=' + (i < 10 ? ' ' : '') + i + ') v[16]', v, 64)
      _B2B_G(0, 8, 16, 24, SIGMA82[i * 16 + 0], SIGMA82[i * 16 + 1]);
      _B2B_G(2, 10, 18, 26, SIGMA82[i * 16 + 2], SIGMA82[i * 16 + 3]);
      _B2B_G(4, 12, 20, 28, SIGMA82[i * 16 + 4], SIGMA82[i * 16 + 5]);
      _B2B_G(6, 14, 22, 30, SIGMA82[i * 16 + 6], SIGMA82[i * 16 + 7]);
      _B2B_G(0, 10, 20, 30, SIGMA82[i * 16 + 8], SIGMA82[i * 16 + 9]);
      _B2B_G(2, 12, 22, 24, SIGMA82[i * 16 + 10], SIGMA82[i * 16 + 11]);
      _B2B_G(4, 14, 16, 26, SIGMA82[i * 16 + 12], SIGMA82[i * 16 + 13]);
      _B2B_G(6, 8, 18, 28, SIGMA82[i * 16 + 14], SIGMA82[i * 16 + 15]);
    }
    // util.debugPrint('   (i=12) v[16]', v, 64)

    for (i = 0; i < 16; i++) {
      _context.h[i] = _context.h[i] ^ _v[i] ^ _v[i + 16];
    }
    // util.debugPrint('h[8]', ctx.h, 64)
  }

  Uint8List _blake2bFinal() {
    _context.t = _context.t + _context.c; // mark last block offset

    while (_context.c < 128) {
      // fill up with zeros
      _context.b[_context.c++] = 0;
      _context.c = _context.c++;
    }
    _blake2bCompress(true); // final block flag = 1
    // little endian convert and store
    var out = Uint8List(_context.outLen);
    for (var i = 0; i < _context.outLen; i++) {
      out[i] = _context.h[i >> 2] >> (8 * (i & 3));
    }
    return out;
  }

  _B2B_GET32(Uint8List list, index) {
    return list[index] ^
        (list[index + 1] << 8) ^
        (list[index + 2] << 16) ^
        (list[index + 3] << 24);
  }

  void _B2B_G(int a, int b, int c, int d, int ix, int iy) {
    var x0 = _m[ix];
    var x1 = _m[ix + 1];
    var y0 = _m[iy];
    var y1 = _m[iy + 1];

    _ADD64AA(a,
        b); // v[a,a+1] += v[b,b+1] ... in JS we must store a uint64 as two uint32s
    _ADD64AC(a, x0,
        x1); // v[a, a+1] += x ... x0 is the low 32 bits of x, x1 is the high 32 bits

    // v[d,d+1] = (v[d,d+1] xor v[a,a+1]) rotated to the right by 32 bits
    var xor0 = _v[d] ^ _v[a];
    var xor1 = _v[d + 1] ^ _v[a + 1];
    _v[d] = xor1;
    _v[d + 1] = xor0;

    _ADD64AA(c, d);

    // v[b,b+1] = (v[b,b+1] xor v[c,c+1]) rotated right by 24 bits
    xor0 = _v[b] ^ _v[c];
    xor1 = _v[b + 1] ^ _v[c + 1];
    _v[b] = (xor0 >>> 24) ^ (xor1 << 8);
    _v[b + 1] = (xor1 >>> 24) ^ (xor0 << 8);

    _ADD64AA(a, b);
    _ADD64AC(a, y0, y1);

    // v[d,d+1] = (v[d,d+1] xor v[a,a+1]) rotated right by 16 bits
    xor0 = _v[d] ^ _v[a];
    xor1 = _v[d + 1] ^ _v[a + 1];
    _v[d] = (xor0 >>> 16) ^ (xor1 << 16);
    _v[d + 1] = (xor1 >>> 16) ^ (xor0 << 16);

    _ADD64AA(c, d);

    // v[b,b+1] = (v[b,b+1] xor v[c,c+1]) rotated right by 63 bits
    xor0 = _v[b] ^ _v[c];
    xor1 = _v[b + 1] ^ _v[c + 1];
    _v[b] = (xor1 >>> 31) ^ (xor0 << 1);
    _v[b + 1] = (xor0 >>> 31) ^ (xor1 << 1);
  }

  // // 64-bit unsigned addition
  // // Sets v[a,a+1] += v[b,b+1]
  // // v should be a Uint32Array
  void _ADD64AA(int a, int b) {
    var o0 = _v[a] + _v[b];
    var o1 = _v[a + 1] + _v[b + 1];
    if (o0 >= 0x100000000) {
      o1++;
    }
    _v[a] = o0;
    _v[a + 1] = o1;
  }

  // // 64-bit unsigned addition
  // // Sets v[a,a+1] += b
  // // b0 is the low 32 bits of b, b1 represents the high 32 bits
  void _ADD64AC(int a, int b0, int b1) {
    var o0 = _v[a] + b0;
    if (b0 < 0) {
      o0 += 0x100000000;
    }
    var o1 = _v[a + 1] + b1;
    if (o0 >= 0x100000000) {
      o1++;
    }
    _v[a] = o0;
    _v[a + 1] = o1;
  }
}

// Initialization Vector
final _BLAKE2B_IV32 = Uint32List.fromList([
  0xf3bcc908,
  0x6a09e667,
  0x84caa73b,
  0xbb67ae85,
  0xfe94f82b,
  0x3c6ef372,
  0x5f1d36f1,
  0xa54ff53a,
  0xade682d1,
  0x510e527f,
  0x2b3e6c1f,
  0x9b05688c,
  0xfb41bd6b,
  0x1f83d9ab,
  0x137e2179,
  0x5be0cd19
]);

const _SIGMA8 = [
  0,
  1,
  2,
  3,
  4,
  5,
  6,
  7,
  8,
  9,
  10,
  11,
  12,
  13,
  14,
  15,
  14,
  10,
  4,
  8,
  9,
  15,
  13,
  6,
  1,
  12,
  0,
  2,
  11,
  7,
  5,
  3,
  11,
  8,
  12,
  0,
  5,
  2,
  15,
  13,
  10,
  14,
  3,
  6,
  7,
  1,
  9,
  4,
  7,
  9,
  3,
  1,
  13,
  12,
  11,
  14,
  2,
  6,
  5,
  10,
  4,
  0,
  15,
  8,
  9,
  0,
  5,
  7,
  2,
  4,
  10,
  15,
  14,
  1,
  11,
  12,
  6,
  8,
  3,
  13,
  2,
  12,
  6,
  10,
  0,
  11,
  8,
  3,
  4,
  13,
  7,
  5,
  15,
  14,
  1,
  9,
  12,
  5,
  1,
  15,
  14,
  13,
  4,
  10,
  0,
  7,
  6,
  3,
  9,
  2,
  8,
  11,
  13,
  11,
  7,
  14,
  12,
  1,
  3,
  9,
  5,
  0,
  15,
  4,
  8,
  6,
  2,
  10,
  6,
  15,
  14,
  9,
  11,
  3,
  0,
  8,
  12,
  2,
  13,
  7,
  1,
  4,
  10,
  5,
  10,
  2,
  8,
  4,
  7,
  6,
  1,
  5,
  15,
  11,
  9,
  14,
  3,
  12,
  13,
  0,
  0,
  1,
  2,
  3,
  4,
  5,
  6,
  7,
  8,
  9,
  10,
  11,
  12,
  13,
  14,
  15,
  14,
  10,
  4,
  8,
  9,
  15,
  13,
  6,
  1,
  12,
  0,
  2,
  11,
  7,
  5,
  3
];

// // These are offsets into a uint64 buffer.
// // Multiply them all by 2 to make them offsets into a uint32 buffer,
// // because this is Javascript and we don't have uint64s
var SIGMA82 = Uint8List.fromList(_SIGMA8.map((x) => x * 2).toList());
