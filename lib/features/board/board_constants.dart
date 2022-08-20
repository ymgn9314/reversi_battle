// 参考: https://en.wikipedia.org/wiki/Hamming_weight

/// 2進数で01の繰り返し表現
///
/// B, D, F, H列にディスクが並んでいる盤面
///
///    A B C D E F G H
///    - - - - - - - -
/// 1 | |o| |o| |o| |o|
///    - - - - - - - -
/// 2 | |o| |o| |o| |o|
///    - - - - - - - -
/// 3 | |o| |o| |o| |o|
///    - - - - - - - -
/// 4 | |o| |o| |o| |o|
///    - - - - - - - -
/// 5 | |o| |o| |o| |o|
///    - - - - - - - -
/// 6 | |o| |o| |o| |o|
///    - - - - - - - -
/// 7 | |o| |o| |o| |o|
///    - - - - - - - -
/// 8 | |o| |o| |o| |o|
///    - - - - - - - -
final m1 = BigInt.parse('0x5555555555555555');

/// 2進数で0011の繰り返し表現
///
/// C, D, G, H列にディスクが並んでいる盤面
///
///    A B C D E F G H
///    - - - - - - - -
/// 1 | | |o|o| | |o|o|
///    - - - - - - - -
/// 2 | | |o|o| | |o|o|
///    - - - - - - - -
/// 3 | | |o|o| | |o|o|
///    - - - - - - - -
/// 4 | | |o|o| | |o|o|
///    - - - - - - - -
/// 5 | | |o|o| | |o|o|
///    - - - - - - - -
/// 6 | | |o|o| | |o|o|
///    - - - - - - - -
/// 7 | | |o|o| | |o|o|
///    - - - - - - - -
/// 8 | | |o|o| | |o|o|
///    - - - - - - - -
final m2 = BigInt.parse('0x3333333333333333');

/// 2進数で00001111の繰り返し表現
///
/// E, F, G, H列にディスクが並んでいる盤面
///
///    A B C D E F G H
///    - - - - - - - -
/// 1 | | | | |o|o|o|o|
///    - - - - - - - -
/// 2 | | | | |o|o|o|o|
///    - - - - - - - -
/// 3 | | | | |o|o|o|o|
///    - - - - - - - -
/// 4 | | | | |o|o|o|o|
///    - - - - - - - -
/// 5 | | | | |o|o|o|o|
///    - - - - - - - -
/// 6 | | | | |o|o|o|o|
///    - - - - - - - -
/// 7 | | | | |o|o|o|o|
///    - - - - - - - -
/// 8 | | | | |o|o|o|o|
///    - - - - - - - -
final m4 = BigInt.parse('0x0f0f0f0f0f0f0f0f');

/// 2進数で0000000011111111の繰り返し表現
///
/// 2, 4, 6, 8行にディスクが並んでいる盤面
///
///    A B C D E F G H
///    - - - - - - - -
/// 1 | | | | | | | | |
///    - - - - - - - -
/// 2 |o|o|o|o|o|o|o|o|
///    - - - - - - - -
/// 3 | | | | | | | | |
///    - - - - - - - -
/// 4 |o|o|o|o|o|o|o|o|
///    - - - - - - - -
/// 5 | | | | | | | | |
///    - - - - - - - -
/// 6 |o|o|o|o|o|o|o|o|
///    - - - - - - - -
/// 7 | | | | | | | | |
///    - - - - - - - -
/// 8 |o|o|o|o|o|o|o|o|
///    - - - - - - - -
final m8 = BigInt.parse('0x00ff00ff00ff00ff');

/// 2進数で00000000000000001111111111111111の繰り返し表現
///
/// 3, 4, 7, 8行にディスクが並んでいる盤面
///
///   A B C D E F G H
///   - - - - - - - -
/// 1 | | | | | | | | |
///    - - - - - - - -
/// 2 | | | | | | | | |
///    - - - - - - - -
/// 3 |o|o|o|o|o|o|o|o|
///    - - - - - - - -
/// 4 |o|o|o|o|o|o|o|o|
///    - - - - - - - -
/// 5 | | | | | | | | |
///    - - - - - - - -
/// 6 | | | | | | | | |
///    - - - - - - - -
/// 7 |o|o|o|o|o|o|o|o|
///    - - - - - - - -
/// 8 |o|o|o|o|o|o|o|o|
///    - - - - - - - -
final m16 = BigInt.parse('0x0000ffff0000ffff');

/// 2進数で00000000000000000000000000000000
/// 11111111111111111111111111111111の繰り返し表現
///
/// 5, 6, 7, 8行にディスクが並んでいる盤面
///
///    A B C D E F G H
///    - - - - - - - -
/// 1 | | | | | | | | |
///    - - - - - - - -
/// 2 | | | | | | | | |
///    - - - - - - - -
/// 3 | | | | | | | | |
///    - - - - - - - -
/// 4 | | | | | | | | |
///    - - - - - - - -
/// 5 |o|o|o|o|o|o|o|o|
///    - - - - - - - -
/// 6 |o|o|o|o|o|o|o|o|
///    - - - - - - - -
/// 7 |o|o|o|o|o|o|o|o|
///    - - - - - - - -
/// 8 |o|o|o|o|o|o|o|o|
///    - - - - - - - -
final m32 = BigInt.parse('0x00000000ffffffff');

/// 2進数で0000000000000001の繰り返し表現
///
/// H列のみにディスクが並んでいる盤面
///
///    A B C D E F G H
///    - - - - - - - -
/// 1 | | | | | | | |o|
///    - - - - - - - -
/// 2 | | | | | | | |o|
///    - - - - - - - -
/// 3 | | | | | | | |o|
///    - - - - - - - -
/// 4 | | | | | | | |o|
///    - - - - - - - -
/// 5 | | | | | | | |o|
///    - - - - - - - -
/// 6 | | | | | | | |o|
///    - - - - - - - -
/// 7 | | | | | | | |o|
///    - - - - - - - -
/// 8 | | | | | | | |o|
///    - - - - - - - -
final h01 = BigInt.parse('0x0101010101010101');

/// 先手(黒)の初期配置
///
/// E4, C5にディスクが並んでいる盤面
///
///    A B C D E F G H
///    - - - - - - - -
/// 1 | | | | | | | | |
///    - - - - - - - -
/// 2 | | | | | | | | |
///    - - - - - - - -
/// 3 | | | | | | | | |
///    - - - - - - - -
/// 4 | | | | |o| | | |
///    - - - - - - - -
/// 5 | | | |o| | | | |
///    - - - - - - - -
/// 6 | | | | | | | | |
///    - - - - - - - -
/// 7 | | | | | | | | |
///    - - - - - - - -
/// 8 | | | | | | | | |
///    - - - - - - - -
final blackInitialBoard = BigInt.parse('0x0000000810000000');

/// 後手(白)の初期配置
///
/// D4, E5にディスクが並んでいる盤面
///
///    A B C D E F G H
///    - - - - - - - -
/// 1 | | | | | | | | |
///    - - - - - - - -
/// 2 | | | | | | | | |
///    - - - - - - - -
/// 3 | | | | | | | | |
///    - - - - - - - -
/// 4 | | | |o| | | | |
///    - - - - - - - -
/// 5 | | | | |o| | | |
///    - - - - - - - -
/// 6 | | | | | | | | |
///    - - - - - - - -
/// 7 | | | | | | | | |
///    - - - - - - - -
/// 8 | | | | | | | | |
///    - - - - - - - -
final whiteInitialBoard = BigInt.parse('0x0000001008000000');