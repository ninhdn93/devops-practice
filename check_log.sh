#!/bin/bash

LOG_FILE="app.log"

if [ -f "$LOG_FILE" ]; then
    echo "Scanning $LOG_FILE for issues..."

    ERROR_COUNT=$(grep -c "ERROR" "$LOG_FILE")

    if [ "$ERROR_COUNT" -gt 0 ]; then
        echo "ALERT: Found $ERROR_COUNT error(s) in $LOG_FILE!"
    else
        echo "SUCCESS: System is healthy! No errors found."
    fi
else
    echo "Warning: $LOG_FILE does not exist!"
fi
# Lịch chạy cron gợi ý: */5 * * * * /path/to/check_log.sh
