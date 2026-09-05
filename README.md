# WBM Palomar Formalization Registrations

Monorepo containing formal mathematical verification packages for Palomar Registry submission under WBM Research.

## Formalization Entries

| Entry Directory | Paper / Monograph | Zenodo DOI | Status |
| :--- | :--- | :--- | :--- |
| `zenodo-22307699/palomar-1-foundations` | *Relational Ontopoiesis and Variational Vacuum Dynamics: Machine-Checked Foundations of Field Geometry and Gauge Symmetry* | [10.5281/zenodo.22307699](https://doi.org/10.5281/zenodo.22307699) | Verified (5 Theorems) |
| `zenodo-22310105/palomar-2-cosmology` | *Physical Cosmology, Standard Model Invariants, and Non-Hermitian Topological Protection: A Machine-Checked Lean 4 Derivation* | [10.5281/zenodo.22310105](https://doi.org/10.5281/zenodo.22310105) | Verified (5 Theorems) |

## Repository Architecture

The repository follows the multi-project monorepo layout:
- **`zenodo-XXXXX/palomar-Y/`**: Individual formalization project directories containing `Challenge.lean`, `Solution.lean`, `comparator.json`, `formalization.yaml`, `lean-toolchain`, and Lake build configurations.
- **`scripts/`**: Preflight verification tools (`check-layout.rb`, `build-all.sh`, `verify_palomar_local.py`).

## License

[MIT License](LICENSE) © 2026 Ryan Carson / WBM Research.
