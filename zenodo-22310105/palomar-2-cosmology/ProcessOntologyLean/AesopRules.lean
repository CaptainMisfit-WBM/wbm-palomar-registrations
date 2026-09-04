import Mathlib.Topology.MetricSpace.Contracting
import ProcessOntologyLean.Ontopoiesis
import ProcessOntologyLean.ConformalScaling
import ProcessOntologyLean.AxisOfSilence

/-!
# Aesop Automation: Process Ontology Proof Search Rules

This module attaches Aesop automated proof attributes to core Process Ontology
theorems and definitions.
-/

open NNReal ContractingWith Filter

/--
Aesop Normalization Rule:
Automatically simplifies quadratic conformal golden ratio identities: φ² - φ - 1 = 0.
-/
@[aesop norm]
theorem aesop_phi_quad_rule : phi ^ 2 - phi - 1 = 0 := phi_equation

/--
Aesop Safe Rule:
Automatically applies the Master Postulate fixed-point contraction: M(X*) = X*.
-/
@[aesop safe]
theorem aesop_master_postulate_rule {α : Type*} [MetricSpace α] [CompleteSpace α] [Nonempty α]
    (M : α → α) {K : ℝ≥0} (hM : ContractingWith K M) :
    M (X_star M hM) = X_star M hM := master_postulate M hM

/--
Aesop Normalization Rule:
Automatically simplifies the Axis of Silence mirror dimension (σ_mirror = 1/2).
-/
@[aesop norm]
theorem aesop_sigma_mirror_rule : sigma_mirror = (1 / 2 : ℝ) := rfl

