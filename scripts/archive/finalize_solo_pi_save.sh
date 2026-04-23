#!/bin/bash
echo "=== Finalizing solo_pi database archive ==="

mkdir -p data/solo_pi data/logs data/summaries

TIMESTAMP=$(date +%Y%m%d_%H%M)

# Copy to correct locations
cp -v ../solo_pi.log                  data/logs/solo_pi_${TIMESTAMP}.log 2>/dev/null || true
cp -v ../solo_pi.clean.extract       data/solo_pi/solo_pi.clean.extract 2>/dev/null || true
cp -v ../top_pi_candidates_clean.txt data/solo_pi/top_pi_candidates_clean.txt 2>/dev/null || true
cp -v ../solo_pi.py                  data/solo_pi/solo_pi.py 2>/dev/null || true

# Count unique candidates
UNIQUE=$(grep -F -e "a(n) =" ../solo_pi.log 2>/dev/null | sort -u | wc -l | tr -d ' ')

# Update master summary
cat >> data/summaries/master_summary.csv << EOF
$(date +%Y-%m-%d),solo,pi,${UNIQUE},pending,7.2121,Strong 6n-family dominant from solo_pi run,solo_pi,${TIMESTAMP}
