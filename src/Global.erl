-module(global@foreign).
-export([isFinite/1, readInt/2, readFloat/1]).

isFinite(_) -> true.

readInt(Radix, N) -> binary_to_integer(N, Radix).
readFloat(N) -> binary_to_float(N).
