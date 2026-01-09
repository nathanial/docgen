import Lake
open Lake DSL

package docgen where
  version := v!"0.0.1"

require parlance from git "https://github.com/nathanial/parlance" @ "v0.0.1"
require scribe from git "https://github.com/nathanial/scribe" @ "v0.0.2"
require staple from git "https://github.com/nathanial/staple" @ "v0.0.2"
require crucible from git "https://github.com/nathanial/crucible" @ "v0.0.7"

@[default_target]
lean_lib Docgen where
  roots := #[`Docgen]

lean_lib Tests where
  roots := #[`Tests]

lean_exe docgen where
  root := `Main

@[test_driver]
lean_exe docgen_tests where
  root := `Tests.Main
