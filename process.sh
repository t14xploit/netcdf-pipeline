#!/bin/bash

INPUT="data/tos_O1_2001-2002.nc"
LOG_DIR="logs"
LOG_FILE="$LOG_DIR/process.log"

mkdir -p logs results

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
export TIMESTAMP

echo "[$TIMESTAMP] Starting NetCDF pipeline..." >> "$LOG_FILE"

if [ ! -f "$INPUT" ]; then
    echo "[$TIMESTAMP] ERROR: Input file $INPUT not found!" >> "$LOG_FILE"
    exit 1
fi

echo "[$TIMESTAMP] Running Python analysis: $INPUT" >> "$LOG_FILE"

python analyze_data.py >> "$LOG_FILE" 2>&1

if [ $? -eq 0 ]; then
    echo "[$TIMESTAMP] SUCCESS: Analysis completed successfully." >> "$LOG_FILE"
else
    echo "[$TIMESTAMP] ERROR: Analysis failed!" >> "$LOG_FILE"
    exit 1
fi

echo "[$TIMESTAMP] NetCDF pipeline finished." >> "$LOG_FILE"
echo "------------------------------" >> "$LOG_FILE"