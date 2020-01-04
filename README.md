Some benchmarks of different languages
--------------------------------------

The benchmarks follow the criteria:

  - They are written as the average software developer would write them, i.e.

    - The algorithms are implemented as cited in public sources;
    - The libraries are used as described in the tutorials, documentation and examples;
    - Used data structures are idiomatic.

  - The used algorithms are similar between the languages (reference implementations), variants are acceptable if the reference implementation exists.
  - All final binaries are releases (optimized for performance if possible) as debug performance may vary too much depending on the compiler.
  - JIT warming up is applied when necessary, and the actual measurements are taken only after the test signals the runner with the TCP request.

# UPDATE 

2019-12-13

# Brainfuck v2.0

Testing brainfuck implementations using two code samples (bench.b and mandel.b).

[Brainfuck v2.0](brainfuck2)
[Brainfuck v1.0](brainfuck)

### bench.b

|        Language |        Time, s |    Memory, MiB |          Energy, J |
| :-------------- | -------------: | -------------: | -----------------: |
|          Kotlin |   2.01 ± 00.03 |  39.77 ± 00.11 |      52.59 ± 01.57 |
|         Nim GCC |   2.19 ± 00.01 |   1.87 ± 00.05 |      57.36 ± 01.18 |
|        Vala GCC |   2.22 ± 00.01 |   5.10 ± 00.07 |      58.54 ± 01.68 |
|             C++ |   2.23 ± 00.07 |   3.67 ± 00.07 |      59.04 ± 02.66 |
|           OCaml |   2.53 ± 00.01 |   5.18 ± 00.05 |      66.73 ± 01.69 |
|              Go |   2.92 ± 00.01 |   3.53 ± 00.10 |      77.90 ± 01.08 |
|          GCC Go |   3.00 ± 00.38 |  19.86 ± 00.75 |      80.72 ± 09.63 |
|         Crystal |   3.07 ± 00.01 |   3.28 ± 00.06 |      80.73 ± 01.78 |
|           MLton |   3.21 ± 00.01 |   0.74 ± 00.03 |      85.33 ± 01.19 |
|            Java |   3.36 ± 00.22 |  39.04 ± 00.12 |      88.07 ± 05.46 |
|            Rust |   3.40 ± 00.03 |   2.13 ± 00.05 |      89.70 ± 02.65 |
|       Nim Clang |   3.45 ± 00.02 |   2.37 ± 00.06 |      89.28 ± 01.57 |
|      Vala Clang |   3.53 ± 00.04 |   4.90 ± 00.32 |      91.05 ± 02.78 |
|             GDC |   3.54 ± 00.02 |   6.48 ± 00.05 |      93.94 ± 02.33 |
|             LDC |   3.55 ± 00.03 |   3.06 ± 00.06 |      90.95 ± 02.04 |
|           Julia |   3.93 ± 00.07 | 168.92 ± 00.81 |     102.23 ± 03.09 |
|    C# .NET Core |   4.30 ± 00.01 |  29.45 ± 00.08 |     109.95 ± 02.42 |
|           Scala |   4.39 ± 00.21 | 141.83 ± 11.04 |     124.73 ± 06.02 |
|             DMD |   4.85 ± 00.01 |   3.64 ± 00.04 |     125.07 ± 01.54 |
|  Haskell MArray |   4.97 ± 00.02 |   5.36 ± 00.09 |     136.74 ± 02.22 |
|    F# .NET Core |   5.19 ± 00.03 |  36.78 ± 00.09 |     129.79 ± 02.24 |
|         Node.js |   5.95 ± 00.03 |  33.73 ± 00.11 |     152.98 ± 02.62 |
|         C# Mono |   6.97 ± 00.43 |  20.65 ± 00.08 |     178.34 ± 09.91 |
|           V GCC |   7.74 ± 00.26 |   0.70 ± 00.03 |     191.23 ± 07.13 |
|         V Clang |   9.47 ± 00.10 |   1.07 ± 00.07 |     232.49 ± 04.71 |
|          Racket |  10.13 ± 00.09 | 106.96 ± 00.11 |     270.83 ± 04.16 |
|          LuaJIT |  11.20 ± 00.54 |   3.00 ± 00.09 |     287.24 ± 13.45 |
|            PyPy |  19.60 ± 00.80 |  91.03 ± 00.20 |     531.44 ± 18.78 |
|     Chez Scheme |  24.50 ± 00.06 |  29.58 ± 00.04 |     615.76 ± 11.03 |
| TruffleRuby JVM |  28.23 ± 00.21 | 791.50 ± 30.62 |    1341.36 ± 27.61 |
|         Haskell |  29.22 ± 00.13 |   5.33 ± 00.07 |     777.90 ± 13.52 |
|           JRuby | 175.82 ± 10.59 | 256.03 ± 21.58 |   4888.55 ± 292.34 |
|             Lua | 202.00 ± 01.53 |   3.06 ± 00.06 |  4295.18 ± 1683.29 |
|            Ruby | 202.39 ± 01.55 |  13.93 ± 00.06 |    5211.42 ± 80.15 |
|          Elixir | 271.90 ± 01.80 |  50.10 ± 00.51 |   6889.75 ± 125.15 |
|          Python | 393.32 ± 03.24 |   9.86 ± 00.03 |  7859.44 ± 4083.30 |
|        Tcl (FP) | 486.90 ± 04.28 |   4.33 ± 00.05 |  12662.64 ± 227.42 |
|            Perl | 768.11 ± 08.90 |   6.33 ± 00.05 | 15681.57 ± 5648.21 |
|        Tcl (OO) | 970.15 ± 08.02 |   4.34 ± 00.06 | 18759.17 ± 8030.37 |

### mandel.b

[Mandel in Brainfuck](brainfuck2/mandel.b)

|        Language |        Time, s |    Memory, MiB |         Energy, J |
| :-------------- | -------------: | -------------: | ----------------: |
|        Vala GCC |  19.24 ± 00.08 |   5.83 ± 00.07 |    496.35 ± 03.90 |
|             C++ |  22.97 ± 00.12 |   4.15 ± 00.07 |    576.71 ± 18.13 |
|         Crystal |  25.39 ± 00.20 |   3.71 ± 00.06 |    652.14 ± 11.31 |
|         Nim GCC |  25.53 ± 00.11 |   2.43 ± 00.04 |    625.69 ± 10.06 |
|          Kotlin |  27.34 ± 00.57 |  45.87 ± 00.15 |    712.02 ± 11.84 |
|           V GCC |  27.87 ± 00.34 |   2.44 ± 00.05 |    679.17 ± 89.70 |
|            Java |  28.45 ± 00.61 |  45.64 ± 00.22 |    759.41 ± 16.48 |
|            Rust |  29.07 ± 00.13 |   2.41 ± 00.05 |    751.86 ± 12.20 |
|      Vala Clang |  29.39 ± 00.08 |   5.82 ± 00.07 |    758.96 ± 10.90 |
|           Scala |  30.84 ± 00.18 | 140.12 ± 13.49 |   775.84 ± 228.32 |
|       Nim Clang |  31.58 ± 00.08 |   2.91 ± 00.04 |    799.71 ± 09.09 |
|             LDC |  31.59 ± 00.14 |   3.96 ± 00.05 |    784.14 ± 11.83 |
|             GDC |  31.80 ± 00.17 |   7.35 ± 00.04 |    813.28 ± 18.57 |
|           MLton |  32.08 ± 00.09 |   3.87 ± 00.03 |    838.51 ± 08.09 |
|          GCC Go |  32.67 ± 00.22 |  26.15 ± 05.91 |    855.21 ± 08.71 |
|    C# .NET Core |  35.87 ± 00.19 |  31.24 ± 00.13 |    908.25 ± 11.12 |
|         V Clang |  39.39 ± 00.28 |   3.18 ± 00.06 |   1013.92 ± 11.12 |
|              Go |  45.39 ± 00.14 |   4.76 ± 00.10 |   1197.78 ± 10.85 |
|           OCaml |  48.05 ± 00.78 |  13.40 ± 04.06 |   1290.93 ± 24.07 |
|             DMD |  57.60 ± 00.37 |   4.53 ± 00.06 |   1429.89 ± 31.57 |
|         Node.js |  58.12 ± 00.47 |  36.27 ± 00.19 |   1468.99 ± 18.54 |
|         C# Mono |  71.36 ± 00.32 |  21.47 ± 00.08 |   1820.90 ± 15.18 |
|           Julia |  77.03 ± 00.42 | 168.73 ± 00.77 |   1979.94 ± 18.83 |
|  Haskell MArray |  97.71 ± 00.46 |   6.53 ± 00.09 |  2434.73 ± 577.97 |
|          LuaJIT | 108.58 ± 00.53 |   3.88 ± 00.06 |  2582.62 ± 192.88 |
|            PyPy | 112.90 ± 21.44 |  91.41 ± 00.21 |  2832.14 ± 837.27 |
|    F# .NET Core | 153.83 ± 04.32 |  39.56 ± 00.52 |  3867.37 ± 103.62 |
|          Racket | 173.76 ± 06.72 | 107.16 ± 00.67 |  4623.94 ± 179.12 |
| TruffleRuby JVM | 191.94 ± 07.90 | 826.39 ± 60.48 |  5482.53 ± 367.48 |
|     Chez Scheme | 247.25 ± 00.91 |  29.72 ± 00.10 | 5966.08 ± 1289.38 |

# Base64

Testing large blob base64 encoding/decoding into newly allocated buffers.

[Base64](base64)
|                Language |       Time, s |    Memory, MiB |       Energy, J |
| :---------------------- | ------------: | -------------: | --------------: |
|                C aklomp |  0.37 ± 00.00 |   2.12 ± 00.02 |    9.42 ± 00.23 |
|                    Rust |  1.84 ± 00.00 |   2.61 ± 00.05 |   48.81 ± 01.07 |
|                       C |  1.85 ± 00.00 |   2.10 ± 00.04 |   47.87 ± 00.79 |
|                 Crystal |  2.38 ± 00.01 |   5.16 ± 00.07 |   88.12 ± 02.78 |
|                     LDC |  2.46 ± 00.05 |  11.11 ± 00.04 |   77.83 ± 02.37 |
|                    Ruby |  2.63 ± 00.09 |  73.16 ± 00.15 |   69.42 ± 02.33 |
|                    Java |  3.04 ± 00.04 | 339.67 ± 24.65 |   85.48 ± 01.48 |
|                     GDC |  3.07 ± 00.01 |  10.88 ± 00.11 |   80.40 ± 00.78 |
|                 V Clang |  3.23 ± 00.07 |   2.34 ± 00.04 |   82.41 ± 02.41 |
|                   Scala |  3.23 ± 00.07 | 150.98 ± 09.47 |   90.83 ± 02.36 |
|                  Kotlin |  3.26 ± 00.02 | 353.68 ± 35.01 |   93.14 ± 01.93 |
|                 Nim GCC |  3.30 ± 00.01 |   7.59 ± 00.04 |   82.97 ± 01.13 |
|       Perl MIME::Base64 |  3.32 ± 00.04 |   7.19 ± 00.06 |   87.26 ± 01.20 |
|                 Node.js |  3.46 ± 00.01 | 117.12 ± 01.23 |   97.63 ± 01.46 |
|               Nim Clang |  3.69 ± 00.01 |   7.94 ± 00.04 |   94.28 ± 01.51 |
|                   V GCC |  3.93 ± 00.06 |   1.84 ± 00.04 |   99.23 ± 02.74 |
|                     PHP |  3.93 ± 00.01 |  15.41 ± 00.10 |  100.26 ± 00.96 |
|           C++ libcrypto |  4.03 ± 00.01 |   5.95 ± 00.05 |  105.42 ± 02.79 |
|            C# .NET Core |  4.75 ± 00.03 |  34.81 ± 00.14 |  123.95 ± 02.00 |
|                      Go |  5.15 ± 00.07 |  15.38 ± 03.22 |  106.51 ± 02.44 |
|                     DMD |  5.70 ± 00.01 |  11.47 ± 00.05 |  152.52 ± 03.19 |
|                     Tcl |  5.77 ± 00.09 |   5.09 ± 00.03 |  147.05 ± 02.76 |
|                    PyPy |  6.62 ± 00.14 |  92.07 ± 00.15 |  173.31 ± 04.33 |
|                  Python |  6.92 ± 00.21 |  10.20 ± 00.07 |  170.44 ± 06.29 |
|                  GCC Go |  6.94 ± 00.10 |  44.42 ± 01.47 |  150.68 ± 02.49 |
|                 C# Mono |  8.86 ± 00.04 |  39.59 ± 00.10 |  226.61 ± 03.40 |
|         TruffleRuby JVM |  9.68 ± 00.03 | 594.60 ± 25.42 |  267.52 ± 02.12 |
|                   Julia | 10.25 ± 00.05 | 236.28 ± 00.43 |  262.32 ± 04.51 |
|                   JRuby | 15.98 ± 00.09 | 208.18 ± 09.36 |  424.66 ± 08.65 |
| Perl MIME::Base64::Perl | 28.83 ± 00.49 |   8.86 ± 00.08 | 695.37 ± 126.81 |

# Json

Testing parsing and simple calculating of values from a big JSON file.

[Json](json)

|              Language |       Time, s |      Memory, MiB |        Energy, J |
| :-------------------- | ------------: | ---------------: | ---------------: |
|              GDC fast |  0.16 ± 00.00 |    94.51 ± 01.35 |     2.69 ± 00.11 |
|     Rust Serde custom |  0.22 ± 00.00 |   105.07 ± 00.04 |     5.27 ± 00.88 |
|      Rust Serde typed |  0.22 ± 00.00 |   115.49 ± 02.68 |     3.32 ± 01.15 |
|     C++ RapidJSON SAX |  0.27 ± 00.00 |     3.57 ± 00.05 |     5.44 ± 00.07 |
|          C++ simdjson |  0.30 ± 00.00 |   253.08 ± 00.66 |     5.55 ± 00.06 |
|         C++ RapidJSON |  0.44 ± 00.00 |   124.06 ± 00.05 |    10.85 ± 00.07 |
|             C++ gason |  0.51 ± 00.00 |   295.99 ± 00.64 |    10.78 ± 00.14 |
|                  Java |  0.58 ± 00.02 |   254.34 ± 12.30 |    15.48 ± 00.36 |
|                 Scala |  0.92 ± 00.39 |   228.96 ± 14.91 |    19.62 ± 02.75 |
|               Node.js |  1.24 ± 00.01 |   286.35 ± 00.29 |    39.28 ± 01.29 |
|    Rust Serde Untyped |  1.25 ± 00.01 |   916.54 ± 00.05 |    31.08 ± 00.40 |
|           Go jsoniter |  1.33 ± 00.01 |    57.09 ± 02.84 |    33.05 ± 00.45 |
|        Crystal Schema |  1.51 ± 00.01 |   156.97 ± 00.08 |    38.68 ± 00.59 |
| Perl Cpanel::JSON::XS |  1.59 ± 00.02 |   495.48 ± 13.88 |    40.25 ± 01.68 |
|                  PyPy |  1.62 ± 00.01 |   401.70 ± 00.91 |    42.41 ± 00.32 |
|                   PHP |  1.74 ± 00.01 |   777.91 ± 02.11 |    44.26 ± 00.24 |
|               Clojure |  1.79 ± 00.12 | 1249.33 ± 168.10 |    58.92 ± 06.49 |
|               Crystal |  1.80 ± 00.01 |   491.18 ± 01.74 |    51.53 ± 01.81 |
|     CPython UltraJSON |  2.06 ± 00.01 |   660.85 ± 02.87 |    54.34 ± 00.59 |
|                 Julia |  2.11 ± 00.01 |  1867.22 ± 00.30 |    54.28 ± 01.12 |
|                    Go |  2.16 ± 00.01 |   275.00 ± 00.29 |    57.19 ± 00.73 |
|                 V GCC |  2.16 ± 00.01 |   591.92 ± 00.06 |    55.87 ± 00.48 |
|               V Clang |  2.16 ± 00.01 |   592.39 ± 00.03 |    55.89 ± 00.54 |
|            C++ json-c |  2.94 ± 00.02 |  1756.27 ± 00.08 |    74.58 ± 01.09 |
|                Python |  2.96 ± 00.05 |   518.99 ± 00.05 |    78.00 ± 01.98 |
|          Crystal Pull |  3.06 ± 00.03 |     4.87 ± 00.03 |    83.68 ± 03.22 |
|                GCC Go |  3.06 ± 00.03 |   259.14 ± 01.73 |    78.88 ± 01.73 |
|               Nim GCC |  3.14 ± 00.05 |   692.31 ± 02.65 |    81.11 ± 01.11 |
|             Nim Clang |  3.22 ± 00.01 |   694.07 ± 00.02 |    82.67 ± 00.63 |
|          C# .NET Core |  3.49 ± 00.06 |   335.08 ± 03.59 |    91.60 ± 01.89 |
|                  Ruby |  3.60 ± 00.03 |   464.26 ± 00.59 |    92.26 ± 01.86 |
|   C# System.Text.Json |  4.12 ± 00.06 |   455.46 ± 24.11 |   108.71 ± 01.71 |
|                   LDC |  4.12 ± 00.01 |   789.63 ± 00.07 |    91.90 ± 00.99 |
|             Ruby YAJL |  4.23 ± 00.11 |   464.64 ± 00.22 |   107.83 ± 02.78 |
|               Haskell |  4.33 ± 00.03 |    10.32 ± 00.07 |   109.12 ± 01.87 |
|               Rust jq |  4.88 ± 00.01 |   868.81 ± 05.43 |   125.88 ± 00.83 |
|                   GDC |  4.95 ± 00.01 |   717.01 ± 00.03 |   126.16 ± 02.41 |
|                 JRuby |  5.64 ± 00.17 |  1837.30 ± 36.30 |   240.32 ± 04.94 |
|               C# Mono |  6.15 ± 00.25 |   310.65 ± 06.95 |   157.46 ± 06.37 |
|             C++ Boost |  6.35 ± 00.07 |  1550.01 ± 00.07 |   165.33 ± 02.93 |
|                   DMD |  7.54 ± 00.06 |   790.07 ± 00.10 |   175.26 ± 03.06 |
|       Perl JSON::Tiny | 25.99 ± 00.21 |   639.48 ± 00.51 |   687.22 ± 10.68 |
|       TruffleRuby JVM | 31.03 ± 00.91 |  1705.95 ± 18.43 | 1362.97 ± 189.19 |

# Matmul

Testing allocating and multiplying matrices.

[Matmul](matmul)

|              Language |        Time, s |     Memory, MiB |         Energy, J |
| :-------------------- | -------------: | --------------: | ----------------: |
| Nim Clang Arraymancer |   0.11 ± 00.00 |   16.32 ± 06.12 |      7.65 ± 00.69 |
|   Nim GCC Arraymancer |   0.12 ± 00.00 |   25.77 ± 19.22 |      8.70 ± 00.50 |
|            LDC lubeck |   0.13 ± 00.06 |   31.40 ± 17.08 |      6.60 ± 01.98 |
|    Julia (threads: 8) |   0.13 ± 00.00 |  271.34 ± 00.18 |      8.81 ± 00.12 |
|          Python NumPy |   0.16 ± 00.00 |   85.21 ± 00.09 |      9.49 ± 00.14 |
|             Java ND4J |   0.22 ± 00.02 |  231.91 ± 01.31 |     12.57 ± 00.88 |
|    Julia (threads: 1) |   0.31 ± 00.01 |  269.76 ± 00.10 |      8.10 ± 01.43 |
|                   LDC |   1.90 ± 00.01 |   73.34 ± 00.04 |     58.01 ± 00.94 |
|                   DMD |   2.16 ± 00.01 |   73.27 ± 00.05 |     65.96 ± 01.70 |
|                   GDC |   2.26 ± 00.01 |   76.95 ± 00.05 |     67.24 ± 01.38 |
|                     C |   3.11 ± 00.01 |   70.21 ± 00.03 |     83.16 ± 01.49 |
|                  Rust |   3.17 ± 00.01 |   70.96 ± 00.05 |     84.25 ± 01.93 |
|               Nim GCC |   3.20 ± 00.00 |   72.97 ± 00.05 |     82.44 ± 00.53 |
|             Nim Clang |   3.20 ± 00.00 |   74.51 ± 03.52 |     84.67 ± 00.34 |
|       Julia (no BLAS) |   3.25 ± 00.02 |  252.49 ± 00.39 |     88.92 ± 01.60 |
|               Crystal |   3.33 ± 00.01 |   63.70 ± 00.05 |     94.51 ± 01.92 |
|                    Go |   3.33 ± 00.02 |   65.64 ± 07.63 |     91.48 ± 02.00 |
|                 Swift |   3.35 ± 00.05 |  195.84 ± 00.12 |     93.17 ± 00.93 |
|                GCC Go |   3.40 ± 00.01 |  103.28 ± 00.54 |     92.30 ± 01.74 |
|               V Clang |   3.48 ± 00.01 |   70.88 ± 00.04 |     95.23 ± 00.58 |
|                Kotlin |   3.48 ± 00.13 |  129.95 ± 00.11 |     99.86 ± 03.98 |
|                 Scala |   3.74 ± 00.02 |  160.69 ± 08.30 |     99.45 ± 02.14 |
|                  Java |   3.82 ± 00.03 |  126.51 ± 00.28 |    107.13 ± 02.43 |
|                 V GCC |   4.21 ± 00.01 |   70.37 ± 00.04 |    111.66 ± 00.41 |
|               Node.js |   4.33 ± 00.01 |  104.46 ± 00.17 |    118.40 ± 02.00 |
|                  PyPy |   7.85 ± 00.02 |  130.68 ± 00.15 |    199.37 ± 03.13 |
|          C# .NET Core |   9.20 ± 00.04 |  104.65 ± 00.14 |    245.58 ± 04.69 |
|               C# Mono |  14.63 ± 00.11 |   92.56 ± 00.12 |    391.00 ± 05.94 |
|       TruffleRuby JVM |  54.93 ± 00.35 |  868.08 ± 44.42 |   1369.98 ± 08.16 |
|                  Ruby | 375.27 ± 03.08 |   83.19 ± 00.06 |   9561.87 ± 93.22 |
|                 JRuby | 493.21 ± 26.77 | 1178.86 ± 70.70 | 12711.33 ± 602.40 |
|                Python | 561.80 ± 05.88 |   79.04 ± 00.05 | 14332.15 ± 149.68 |
|                   Tcl | 579.99 ± 03.84 |  280.54 ± 00.04 | 14821.26 ± 119.03 |
|                  Perl | 658.61 ± 11.11 |  608.39 ± 00.04 | 16095.76 ± 277.50 |

# Havlak

Testing Havlak's loop finder implementations.

[Havlak](havlak)

|     Language |       Time, s |    Memory, MiB |       Energy, J |
| :----------- | ------------: | -------------: | --------------: |
|      Crystal |  10.61 ± 00.03 | 230.98 ± 01.42 |  315.04 ± 05.51 |
|      Nim GCC |  17.97 ± 00.05 | 488.74 ± 12.08 |  466.46 ± 02.45 |
|    Nim Clang |  18.39 ± 00.05 | 486.58 ± 05.07 |  481.98 ± 06.01 |
|          C++ |  18.41 ± 00.20 | 180.20 ± 00.07 |  448.23 ± 07.22 |
|           Go |  24.78 ± 00.09 | 368.25 ± 16.48 |  722.28 ± 10.52 |
|        Scala |  25.54 ± 00.39 | 386.10 ± 06.89 | 1063.59 ± 21.75 |
|          LDC |  25.86 ± 00.09 | 466.93 ± 10.38 |  727.94 ± 06.65 |
|          DMD |  31.26 ± 00.07 | 477.36 ± 16.73 |  888.16 ± 10.52 |
|          GDC |  32.73 ± 00.13 | 419.37 ± 00.04 |  823.79 ± 09.78 |
|      C# Mono |  37.46 ± 00.14 | 323.23 ± 02.32 | 1153.25 ± 15.56 |
|       GCC Go |  40.11 ± 00.50 | 416.71 ± 32.67 | 1210.13 ± 15.52 |
|         PyPy |  42.66 ± 01.13 | 648.11 ± 57.22 | 1101.84 ± 35.78 |
| C# .NET Core |  43.42 ± 00.26 | 541.12 ± 16.22 | 1128.20 ± 14.77 |
|       Python | 173.19 ± 00.81 | 464.74 ± 00.05 | 4508.53 ± 56.21 |

# Environment

CPU: Intel(R) Core(TM) i7-2600 CPU @ 3.40GHz

Base Docker image: Debian GNU/Linux bullseye/sid

| Language     | Version                         |
| ------------ | ------------------------------- |
| .NET Core    | 3.0.101                         |
| C# .NET Core | 3.3.1-beta4-19462-11 (66a912c9) |
| C# Mono      | 6.4.0.198                       |
| Chez Scheme  | 9.5                             |
| Clang        | 9.0.0                           |
| Clojure      | "1.10.1"                        |
| Crystal      | 0.31.1                          |
| DMD          | v2.089.0                        |
| Elixir       | 1.9.1                           |
| F# .NET Core | 10.6.0.0 for F# 4.7             |
| GCC          | 9.2.1                           |
| GCC Go       | 9.2.1                           |
| GDC          | 9.2.1                           |
| Go           | go1.13.5                        |
| Haskell      | 8.8.1                           |
| JRuby        | 9.2.9.0                         |
| Java         | 13.0.1                          |
| Julia        | v"1.3.0"                        |
| Kotlin       | 1.3.61                          |
| LDC          | 1.18.0                          |
| Lua          | Lua 5.3                         |
| LuaJIT       | LuaJIT 2.1.0-beta3              |
| MLton        | 20180207                        |
| Nim          | 1.0.4                           |
| Node.js      | v13.3.0                         |
| OCaml        | 4.09.0                          |
| PHP          | 7.3.12-1                        |
| Perl         | v5.30.0                         |
| PyPy         | 7.2.0-final0 for Python 3.6.9   |
| Python       | 3.7.5                           |
| Racket       | "7.5"                           |
| Ruby         | 2.6.5p114                       |
| Rust         | 1.39.0                          |
| Scala        | 2.13.1                          |
| Swift        | swift-5.1.2-RELEASE             |
| Tcl          | 8.6                             |
| TruffleRuby  | 19.3.0                          |
| V            | 0.1.23 6d5e9f8                  |
| Vala         | 0.46.5                          |

# Testing

## Using Docker

Build the image:

    $ docker build docker/ -t benchmarks

Run the image:

    $ docker run -it --rm -v $(pwd):/src benchmarks <cmd>

where <cmd> is:

 - `versions` (print installed language versions)
 - `shell` (start the shell)
 - `brainfuck2 bench` (build and run Brainfuck2 bench.b benchmarks)
 - `brainfuck2 mandel` (build and run Brainfuck2 mandel.b benchmarks)
 - `base64` (build and run Base64 benchmarks)
 - `json` (build and run Json benchmarks)
 - `matmul` (build and run Matmul benchmarks)
 - `havlak` (build and run Havlak benchmarks)

Please note that the actual measurements provided in the project are taken semi-manually (via `shell`) as the full update takes days and could have occassional issues in Docker.

## Manual

The tests should be built first (using `build.sh`) and after that executed (using `run.sh` and `run2.sh` where applicable). The measurements are taken using `analyze.rb` script:

    $ cd <test>
    $ ../analyze.rb ./run.sh
    $ ../analyze.rb ../xtime.rb <single test>

Please note that the measurements could take hours (it uses 10 iterations by default).

### Prerequisites

Please use [Dockerfile](docker/Dockerfile) as a reference regarding which packages and tools are required.

For all (optional):

 - [Powercap](https://github.com/powercap/powercap) for reading energy counters in Linux (Debian package `powercap-utils`)

For Python:

 - [NumPy](https://numpy.org/) for matmul tests (Debian package `python3-numpy`)
 - [UltraJSON](https://pypi.org/project/ujson/) for JSON tests (Debian package `python3-ujson`)

For C++:

 - [Boost](https://www.boost.org/) for JSON tests (Debian package `libboost-dev`)
 - [JSON-C](https://github.com/json-c/json-c) for JSON tests (Debian package `libjson-c-dev`)

For Rust:

 - [libjq](https://stedolan.github.io/jq/) for jq test (Debian packages `libjq-dev`, `libonig-dev` and environment variable `JQ_LIB_DIR=/usr/lib/x86_64-linux-gnu/`)

For Java, Scala:

 - [Coursier](https://get-coursier.io/) for downloading Maven artifacts

For Lua:

 - [LuaSocket](http://w3.impa.br/~diego/software/luasocket/) for TCP connectivity between the tests and the test runner (Debian package `lua-socket`)
 - [luaposix](http://luaposix.github.io/luaposix/) for getting PID of the tests (Debian package `lua-posix`)

For Haskell:

 - [network-simple](http://hackage.haskell.org/package/network-simple) for TCP connectivity between the tests and the test runner

For C, C++, Chez Scheme:

 - [libsocket](https://github.com/dermesser/libsocket/) for TCP connectivity between the tests and the test runner
