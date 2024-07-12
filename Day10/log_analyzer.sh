#!/bin/bash

# Here we are showing how to use log file
if [ -z "$1" ]; then
  echo "Usage: $0 <path_to_log_file>"
  exit 1
fi

# Declare variable for first argument
log_file=$1
report_file="summary_report_$(date +%Y%m%d).txt" # Create file using custom timestamp

# Check if log file is exist or not
if [ ! -f "$log_file" ]; then
  echo "Log file not found!"
  exit 1
fi

# Counting lines in log file
total_lines=$(wc -l < "$log_file")
# Counting number of lines containing words ERROR & Failed
error_count=$(grep -cE "ERROR|Failed" "$log_file")
# Finds line include CRITICAL and line number using -n
critical_events=$(grep -n "CRITICAL" "$log_file")

# Declare an associative array to store error_messages
declare -A error_messages

# Read log file line by line
while IFS= read -r line; do
  if [[ "$line" =~ ERROR|Failed ]]; then
    error_message=$(echo "$line" | awk -F']' '{print $NF}')
    ((error_messages["$error_message"]++))
  fi
done < "$log_file"

# Sorting of errors
top_errors=$(for message in "${!error_messages[@]}"; do
  echo "${error_messages[$message]} $message"
done | sort -rn | head -n 5)

# Printing final outout data
echo "Date of analysis: $(date)" > "$report_file"
echo "Log file name: $log_file" >> "$report_file"
echo "Total lines processed: $total_lines" >> "$report_file"
echo "Total error count: $error_count" >> "$report_file"
echo "Top 5 error messages with their occurrence count:" >> "$report_file"
echo "$top_errors" >> "$report_file"
echo "List of critical events with line numbers:" >> "$report_file"
echo "$critical_events" >> "$report_file"

echo "Analysis complete. Report generated: $report_file"
