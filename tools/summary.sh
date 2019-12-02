#!/usr/bin/env bash
# Counts the number of lines in one day's issues output and summarizes the issues
# Usage: ./summary.sh [path/to/issues_output_dir/date]
# without any args, summarizes the last day of output in issues_output/

# Note: need to run ./issues.sh before this tool

if [ -z "$1" ]
then
  ISSUES_DIR="issues_output/$(ls issues_output | tail -n 1)"
else
  ISSUES_DIR="$1"
fi

for source_file in "${ISSUES_DIR%}"/*
do
  sf=${source_file##*/}
  echo "${sf%.*} $(wc -l "${source_file}" |awk '{print $1}')"
done | tee "$ISSUES_DIR/summary.txt"
