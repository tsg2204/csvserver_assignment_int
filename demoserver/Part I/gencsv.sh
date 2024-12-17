#!/bin/bash
# gencsv.sh
# Usage: ./gencsv.sh <start_index> <end_index>

start=$1
end=$2

if [ -z "$start" ] || [ -z "$end" ]; then
  echo "Usage: $0 <start_index> <end_index>"
  exit 1
fi

for i in $(seq $start $end); do
  echo "$i, $((RANDOM % 100))"
done > inputFile
