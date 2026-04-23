#!/bin/bash
echo "=== Cleaning up IIH_CMF root and organizing files ==="

mkdir -p data/primes data/solo_pi data/logs data/summaries

# Move all solo prime extracts into data/primes/
echo "Moving solo prime extracts..."
mv -v solo_*.clean.extract data/primes/ 2>/dev/null || true

# Ensure solo_pi files are in the right place
mv -v solo_pi.clean.extract data/solo_pi/ 2>/dev/null || true
mv -v top_pi_candidates_clean.txt data/solo_pi/ 2>/dev/null || true
mv -v solo_pi.py data/solo_pi/ 2>/dev/null || true

# Move old helper scripts out of root
mkdir -p scripts/archive
mv -v *.sh scripts/archive/ 2>/dev/null || true

echo "✅ Cleanup complete. Current structure:"

echo "data/primes/ contents:"
ls -l data/primes/ | tail -15

echo "data/solo_pi/ contents:"
ls -l data/solo_pi/

# Update git
git add data/ scripts/ 2>/dev/null || true
git commit -m "Cleanup: Move all solo prime extracts into data/primes/ and organize root (April 23, 2026)" || echo "No changes to commit"
git push origin main

echo "✅ Everything is now under data/ and pushed to GitHub!"
