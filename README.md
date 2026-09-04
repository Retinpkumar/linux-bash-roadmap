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

## Module L3 — Processes & System Monitoring

**Status:** Complete — concept, hands-on, exercises, and mini-project all done.

### Topics (all 4 taught + confirmed understood)

- Topic 1 — Processes & PIDs (parent/child tree, snapshot vs. live view)
- Topic 2 — Signals & killing (graceful vs. forceful, by-PID vs. by-name)
- Topic 3 — Job control (foreground/background/stopped, `nohup`/`disown` for surviving logout)
- Topic 4 — Disk & memory reporting (`df` vs. `du`, `used` vs. reclaimable cache, reading `available` correctly)

### Mini-Project: `health_check.sh`

**Goal:** A script that reports disk and memory usage and flags anything crossing a threshold.

**Logic:** gather → compare → flag → report

- Gathers available memory (`free -m`) and disk usage on `/` (`df -h`)
- Compares each against a threshold (disk > 85%, memory available < 15% of total)
- Prints a report line for each metric, flagging any that cross the line

**Usage:**

```bash
./L3/health_check.sh
```

**Example output:**

Available memory: 7329MB
Disk used: 2%
OK: Disk usage is within limits
OK: Available memory is within limits

**Known limitation / next step:** Currently prints a status line for every metric, healthy or not. A more production-ready version (relevant once we hit L6 automation) would only print output when something is actually flagged, so logs stay quiet unless there's a real problem to see.
