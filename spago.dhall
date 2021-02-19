{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name =
    "globals"
, dependencies =
    [ "assert", "console", "effect", "functions", "maybe", "psci-support" ]
, packages =
    ./packages.dhall
, sources =
    [ "src/**/*.purs", "test/**/*.purs" ]
, backend = "purerl"
}
