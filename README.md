# Log Archive Tool

A simple Bash CLI tool to archive and compress logs into timestamped `.tar.gz` files.

## Features

- Compress logs into `.tar.gz`
- Timestamp-based archive names
- Archive history logging
- CLI-based usage
- Linux automation project

## Project Structure

```bash
log-archive-tool/
├── log-archive.sh
├── archive_logs/
├── archive_history.log
└── README.md
```

## Usage

Make script executable:

```bash
chmod +x log-archive.sh
```

Run the script:

```bash
./log-archive.sh <log-directory>
```

Example:

```bash
./log-archive.sh /var/log
```

## Example Output

```bash
Logs archived successfully!
Archive: archive_logs/logs_archive_20260519_070211.tar.gz
```

## Technologies Used

- Bash Scripting
- Linux
- tar command
- CLI Automation

## Project URL

https://roadmap.sh/projects/log-archive-tool
