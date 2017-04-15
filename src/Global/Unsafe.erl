-module (global_unsafe@foreign).
-export([unsafeStringify/1, unsafeToFixed/2, unsafeToExponential/2, unsafeToPrecision/2]).

unsafeStringify(X) -> error("very unsafe").
unsafeToFixed(Digits, N) -> float_to_binary(N, {decimals, Digits}).
unsafeToExponential(Digits, N) -> float_to_binary(N, {scientific, Digits}).
unsafeToPrecision(Digits, N) -> unsafeToPrecision(Digits, N). 
