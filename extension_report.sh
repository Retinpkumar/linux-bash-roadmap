#!/bin/bash
find "$1" -type f | sed 's/.*\.//' | sort | uniq -c
