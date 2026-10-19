#!/bin/bash
source ~/.config/fastfetch/Fetch/scripts/vars.sh

if [[ $percentage -lt 100 ]]
then
  ProgressBar ${install_time} ${end_challenge}
  echo "  ($install_time/365 days)"
else [[ $percentage -ge 100 ]]
  echo "  ($install_time/365 days)"
  echo "Challenge completed"
fi
