from ramanujan.LHSHashTable import LHSHashTable
from ramanujan.poly_domains.CartesianProductPolyDomain import CartesianProductPolyDomain
from ramanujan.enumerators.EfficientGCFEnumerator import EfficientGCFEnumerator
import sympy as sp
import mpmath as mp
import sys
import traceback

# ==================== ACTIVATE THE CMF PATCH ====================
import cmf_patches   # ← This loads the high-precision + blacklist + dict fix
print("✅ CMF solo-π fix is active (2000 dps + blacklist disabled)")
# ============================================================

print("=== SOLO-π SEARCH (Broad, with fixed library) ===")
mp.mp.dps = 100

TARGETS = [sp.pi]
print("Target: π (as SymPy expression)")

try:
    lhs = LHSHashTable(
        name="solo_pi_final",
        search_range=6,
        const_vals=TARGETS
    )
    print("LHSHashTable created successfully")
except Exception as e:
    print("ERROR at LHSHashTable:", traceback.format_exc())
    sys.exit(1)

try:
    poly_domain = CartesianProductPolyDomain(
        a_deg=3, a_coef_range=[-6, 6],
        b_deg=3, b_coef_range=[-6, 6]
    )
    print("PolyDomain created successfully")
except Exception as e:
    print("ERROR at PolyDomain:", traceback.format_exc())
    sys.exit(1)

try:
    enumerator = EfficientGCFEnumerator(
        hash_table=lhs,
        poly_domains=poly_domain,
        sym_constants=TARGETS
    )
    print("Enumerator created successfully")
except Exception as e:
    print("ERROR at Enumerator:", traceback.format_exc())
    sys.exit(1)

print("Starting full_execution() — broad solo-π with fixed library")
try:
    results = enumerator.full_execution()
    print("full_execution completed")
    enumerator.print_results(results)
except Exception as e:
    print("ERROR during full_execution():")
    print(traceback.format_exc())
    sys.exit(1)

print("\n✅ Solo-π search finished.")
print("=== SCRIPT ENDED ===")

