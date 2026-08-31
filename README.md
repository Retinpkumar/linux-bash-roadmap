# Linux & Bash Mastery

Learning project working through a structured roadmap: filesystem navigation,
permissions, processes, text processing, and bash scripting.

## Module L1 — Filesystem & Navigation

`extension_report.sh` — scans a directory tree recursively and reports a count
of files by extension.

Usage:
    ./extension_report.sh <directory>

Example:
    ./extension_report.sh test_data

## L2 — Permissions & Users

**Script:** `L2/permission_audit.sh`

Audits a directory tree and flags files with overly permissive ("world-writable") permissions — i.e. files where the "other" audience has write access, which is generally a security risk.

### Usage
```bash
./L2/permission_audit.sh <target_directory>
```

### Example
```bash
./L2/permission_audit.sh ~/some_folder
```

Output:

Permission Audit Report for: /path/to/some_folder
Flagged (world-writable) files:
/path/to/some_folder/example.txt


If no files are world-writable, the script prints the header lines with no files listed underneath — that's the expected "all clear" result, not an error.
