# WBM Palomar Formalization Registrations

Monorepo containing formal mathematical verification packages for Palomar Registry submission under WBM Research.

## Formalization Entries

| Entry Directory | Paper / Monograph | Zenodo DOI | Status |
| :--- | :--- | :--- | :--- |
| `zenodo-22116208/palomar` | *Continuous Field Semantics and Discrete Proof-Assistant Verification: A Unified Lean 4 Conceptual Audit of Process Ontology and KTLean* | [10.5281/zenodo.22116208](https://doi.org/10.5281/zenodo.22116208) | Verified (5 Theorems) |

## Repository Architecture

The repository follows the multi-project monorepo layout:
- **`zenodo-XXXXX/palomar/`**: Individual formalization project directories containing `Challenge.lean`, `Solution.lean`, `comparator.json`, `formalization.yaml`, `lean-toolchain`, and Lake build configurations.
- **`scripts/`**: Preflight verification tools (`check-layout.rb`, `build-all.sh`, `verify_palomar_local.py`).

## License

[MIT License](LICENSE) © 2026 Ryan Carson / WBM Research.
