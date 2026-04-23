#!/bin/bash
# save_solo_pi_results.sh - Archive current solo_pi run into clean database structure

echo "=== Archiving solo_pi run files ==="

# Create structure if missing
mkdir -p data/solo_pi data/logs data/summaries

TIMESTAMP=$(date +%Y%m%d_%H%M)

# Copy files to correct locations
echo "Copying files..."
cp -v ../solo_pi.log                  data/logs/solo_pi_${TIMESTAMP}.log 2>/dev/null || true
cp -v ../solo_pi.clean.extract       data/solo_pi/ 2>/dev/null || true
cp -v ../top_pi_candidates_clean.txt data/solo_pi/ 2>/dev/null || true
cp -v ../solo_pi.py                  data/solo_pi/ 2>/dev/null || true

# Count unique candidates for the summary
UNIQUE=$(grep -F -e "a(n) =" ../solo_pi.log 2>/dev/null | sort -u | wc -l | tr -d ' ')

# Update master summary
cat >> data/summaries/master_summary.csv << EOF
$(date +%Y-%m-%d),solo,pi,${UNIQUE},pending,7.2121,Strong 6n-family dominant from solo_pi run,solo_pi,${TIMESTAMP}
