#!/bin/bash

# Check if directory argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: ./log-archive.sh <log-directory>"
    exit 1
fi

LOG_DIR=$1

# Check if directory exists
if [ ! -d "$LOG_DIR" ]; then
    echo "Error: Directory does not exist."
    exit 1
fi

# Create archive directory if not present
ARCHIVE_DIR="archive_logs"
mkdir -p "$ARCHIVE_DIR"

# Timestamp
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

# Archive filename
ARCHIVE_NAME="logs_archive_${TIMESTAMP}.tar.gz"

# Compress logs
tar -czf "${ARCHIVE_DIR}/${ARCHIVE_NAME}" "$LOG_DIR"

# Verify success
if [ $? -eq 0 ]; then
    echo "$(date +"%Y-%m-%d %H:%M:%S") - Archived ${LOG_DIR} into ${ARCHIVE_NAME}" >> archive_history.log

    echo "=================================="
    echo " Logs archived successfully!"
    echo " Archive: ${ARCHIVE_DIR}/${ARCHIVE_NAME}"
    echo "=================================="
else
    echo "Archive failed."
    exit 1
fi
