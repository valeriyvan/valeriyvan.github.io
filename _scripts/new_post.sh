string=$(cat << EOF
---
layout: post
title:  "TIL"
date:   $(date '+%Y-%m-%d') $(date +"%H:%M"):00 +0200
categories: TIL
---
EOF
)
filename="_posts/$(date '+%Y-%m-%d')-TIL.markdown"
echo "$string" > "$filename"
open -a Sublime\ Text "$filename"
