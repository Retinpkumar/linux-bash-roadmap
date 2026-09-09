#!/bin/bash
grep "ERROR_" app.log | cut -d " " -f3 | sort | uniq -c > error_report.txt
