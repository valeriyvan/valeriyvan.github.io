string=$(cat << EOF
---
layout: post
title:  "TIL"
date:   $(date '+%Y-%m-%d') $(date +"%H:%M"):00 +0200
categories: TIL
---
EOF
)
echo "$string" > "_posts/$(date '+%Y-%m-%d')-TIL.markdown"
