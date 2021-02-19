-module(test_main@foreign).
-export([unencodable/0]).

unencodable() -> <<"\uDFFF">>.