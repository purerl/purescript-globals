-module(global@foreign).
-export([isFinite/1, readInt/2, readFloat/1, '_decodeURI'/0, '_encodeURI'/0, '_encodeURIComponent'/0, '_decodeURIComponent'/0, '_toFixed'/0, '_toExponential'/0, '_toPrecision'/0]).

isFinite(_) -> true.

formatNumber(Format) ->
  fun (Fail, Succ, Digits, N) ->
    try
      Succ(Format(Digits, N))
    catch
      _:_ -> Fail("Couldn't encode/decode URI")
    end
  end
.

'_toFixed'() -> formatNumber(fun (Digits, N) -> float_to_binary(N, [{decimals, Digits}]) end).
'_toExponential'() -> formatNumber(fun (Digits, N) -> float_to_binary(N, [{scientific, Digits}]) end).
'_toPrecision'() -> '_toFixed'().

readInt(Radix, N) -> binary_to_integer(N, Radix).
readFloat(N) -> binary_to_float(N).

encdecURI(EncDec) ->
  fun (Fail, Succ, S) ->
    try
      Succ(EncDec(S))
    catch
      _:_ -> Fail("Couldn't encode/decode URI")
    end
  end
.

'_decodeURI'() -> encdecURI(fun http_uri:decode/1).
'_encodeURI'() -> encdecURI(fun http_uri:encode/1).
'_decodeURIComponent'() -> encdecURI(fun http_uri:decode/1).
'_encodeURIComponent'() -> encdecURI(fun http_uri:encode/1).