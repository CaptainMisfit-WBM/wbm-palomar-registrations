import Lake
open Lake DSL

package ProcessOntologyLean where
  keywords := #["math"]
  leanOptions := #[
    ⟨`pp.unicode.fun, true⟩,
    ⟨`relaxedAutoImplicit, false⟩,
    ⟨`weak.linter.mathlibStandardSet, true⟩,
    ⟨`maxSynthPendingDepth, 3⟩
  ]

require mathlib from git
  "https://github.com/leanprover-community/mathlib4" @ "v4.28.0"

@[default_target]
lean_lib ProcessOntologyLean where
  globs := #[.submodules `ProcessOntologyLean]

@[default_target]
lean_lib Challenge where
  globs := #[.one `Challenge]

@[default_target]
lean_lib Solution where
  globs := #[.one `Solution]
