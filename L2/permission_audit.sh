#!/bin/bash
TARGET_DIR="$1"
echo "Permission Audit Report for: $TARGET_DIR"
echo "Flagged (world-writable) files:"
find "$TARGET_DIR" -type f -perm -o+w
