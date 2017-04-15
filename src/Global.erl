-module(global@foreign).
-export([isFinite/1, readInt/2, readFloat/1, decodeURI/1, encodeURI/1, decodeURIComponent/1, encodeURIComponent/1]).

isFinite(_) -> true.

readInt(Radix, N) -> binary_to_integer(N, Radix).
readFloat(N) -> binary_to_float(N).

decodeURI(X) -> http_uri:decode(X).
encodeURI(X) -> http_uri:encode(X).

decodeURIComponent(X) -> http_uri:decode(X).
encodeURIComponent(X) -> http_uri:encode(X).
