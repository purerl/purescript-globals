-module (global_unsafe@foreign).
-export([unsafeStringify/1, unsafeToFixed/2, unsafeToExponential/2, unsafeToPrecision/2, unsafeDecodeURI/1, unsafeEncodeURI/1, unsafeDecodeURIComponent/1, unsafeEncodeURIComponent/1]).

unsafeStringify(_) -> error("very unsafe").
unsafeToFixed(Digits, N) -> float_to_binary(N, [{decimals, Digits}]).
unsafeToExponential(Digits, N) -> float_to_binary(N, [{scientific, Digits}]).
unsafeToPrecision(Digits, N) -> unsafeToFixed(Digits, N). 

unsafeDecodeURI(X) -> http_uri:decode(X).
unsafeEncodeURI(X) -> http_uri:encode(X).
unsafeDecodeURIComponent(X) -> http_uri:decode(X).
unsafeEncodeURIComponent(X) -> http_uri:encode(X).
