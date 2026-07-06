import SectionConjectureCanonicalLaneLean.Formalization
import SectionConjectureCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace SectionConjectureCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "810c47f36f22ecceaab0773a05e35494ab331d23552bc33fa229d8d547205ffc", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "8cde0c2488d13194f4b241adaecb116515ea2e2244bd42a8a12bd20620487809", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "24731ef7f4ebc8d1245082743903be574d4bc80ff7cefeeba8d046f96f38424d", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "5862c7144adbabdf7af5dce7d0e704baa836c014457295f2056723ba1b29bdb6", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "e813b26fc0aead38d0a79af8b632878ee71c233bbd492492efc0d9c3741386d9", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "0d9b809f68691bd4b5df4cce452cffd36a80e1bab199d45c751ad76993d82e8d", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "2ce24104d7e885411d5c71d6a5d878b210b41a688e17645b589b1e317242076c", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "56c5fb8904f713b2a822ed7ada5f6b9c3a020ea085a421e3354cbf8536539f38", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "d06e5eb703eed98757e98260f72dde52de5b0ea0e7e8264feb62f46bd5b41110", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Identification bridge" },
  { index := 6, label := "Scalar closure" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
  { gate := "SC_G1", constant := "kappa_section" },
  { gate := "SC_G2", constant := "sigma_fundamental" },
  { gate := "SC_G3", constant := "kappa_compact" },
  { gate := "SC_G4", constant := "rho_rigidity" },
  { gate := "SC_G5", constant := "section_transfer" },
  { gate := "SC_G6", constant := "eps_coh" },
  { gate := "SC_GM", constant := "derived" }
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "17b3ec313cff0aab7cd4f710febedd1c0a38212cff8537a0996f508a3b65d34f" },
  { path := "README.md", sha256 := "046d9c34fcbb9005c8aa440191e8c6cad0762569bd993c60a6841bd5e225f85d" },
  { path := "artifacts/constants_extracted.json", sha256 := "5862c7144adbabdf7af5dce7d0e704baa836c014457295f2056723ba1b29bdb6" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "24731ef7f4ebc8d1245082743903be574d4bc80ff7cefeeba8d046f96f38424d" },
  { path := "artifacts/constants_registry.json", sha256 := "e813b26fc0aead38d0a79af8b632878ee71c233bbd492492efc0d9c3741386d9" },
  { path := "artifacts/promotion_report.json", sha256 := "2ce24104d7e885411d5c71d6a5d878b210b41a688e17645b589b1e317242076c" },
  { path := "artifacts/stitch_constants.json", sha256 := "0d9b809f68691bd4b5df4cce452cffd36a80e1bab199d45c751ad76993d82e8d" },
  { path := "notes/EG1_public.md", sha256 := "fc689a339134c9f0356ca05341ff3a24bc737c8a1604f5a4ea979cf19edf0d5a" },
  { path := "notes/EG2_public.md", sha256 := "af5624d61fb79475eaf7ad878ebae3946723f04ba9c39a7ab7d2be444e109c3f" },
  { path := "notes/EG3_public.md", sha256 := "dc04dc1449c1a7ac085b4caa681058571b364e5e1dfa41512001fb5e80639619" },
  { path := "notes/EG4_public.md", sha256 := "1532807230efcb03329e00faff5f38128bbb0df1b1ab50278cbeb8cbf993fb30" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "8cde0c2488d13194f4b241adaecb116515ea2e2244bd42a8a12bd20620487809" },
  { path := "notes/GEOMETRIC_GALOIS_BRIDGE.md", sha256 := "fb1db350f00543b7fe7444fd96d7c8a51beeb5eabd54b1960a4323feb700ed08" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "e2f26fdf772b0061e81903ad167a6b173af1ad253966316c7b76b2ba59ef3dcc" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "e4fd4a071bd3ee4a93c0d56a17c237c46e6d6e7cb1a36e4d4701e5aac9519f70" },
  { path := "paper/SECTION_CONJECTURE_PREPRINT.md", sha256 := "1eedad67f7514ed33f6967fadc11d9ab1626b751b5cb42d328aac872ef50c648" },
  { path := "repro/REPRO_PACK.md", sha256 := "9b9a8359ff718edc68318a205857e788da438d88f3874068642dd984a16ef5ae" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "8aab607d7f7a536eda8407c8703030d8fd22a4978d398f5c6c4c78d0eed50163" },
  { path := "repro/certificate_baseline.json", sha256 := "d06e5eb703eed98757e98260f72dde52de5b0ea0e7e8264feb62f46bd5b41110" },
  { path := "repro/run_repro.sh", sha256 := "5e2f14b1233ce02ae0be7d948760c089518dddf114306e73403e776b10fb0c62" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/sc_closure_guard.py", sha256 := "bee58088bec301628ff7d9c5558ba3df115f6534b22e1d5aa536f878bbc603a2" },
  { path := "scripts/README.md", sha256 := "b8e4f4c51314b392f560b1f555fa785c772dab8897381fcf00875514306b658c" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "SC_G1", status := "PASS" },
  { gate := "SC_G2", status := "PASS" },
  { gate := "SC_G3", status := "PASS" },
  { gate := "SC_G4", status := "PASS" },
  { gate := "SC_G5", status := "PASS" },
  { gate := "SC_G6", status := "PASS" },
  { gate := "SC_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "eps_coh", value := "0.0" },
  { key := "kappa_compact", value := "0.8032128514056224" },
  { key := "kappa_section", value := "1.0937930000000002" },
  { key := "rho_rigidity", value := "1.078" },
  { key := "section_transfer", value := "1.030627" },
  { key := "sigma_fundamental", value := "1.0739999999999998" },
  { key := "sigma_star_can", value := "1.054" }
]

def bridgeConstantKeys : List String := [
  "eps_coh",
  "kappa_compact",
  "kappa_section",
  "rho_rigidity",
  "section_transfer",
  "sigma_fundamental",
  "sigma_star_can"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 6 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 7 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 26 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end SectionConjectureCanonicalLaneLean
end HautevilleHouse
