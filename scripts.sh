#!/usr/bin/env bash
set -euo pipefail

# Snyk with larger heap
GRADLE_OPTS="-Xmx4g" snyk test --all-sub-projects

# Redirect stdout and err
cmd > log.out 2> log.err

# Docker run postgres
docker run -d -e POSTGRES_PASSWORD= -e POSTGRES_USER= -e POSTGRES_DB= -p 5432:5432 postgres

# Git diffs (e.g., two commits back on specific file)
git diff HEAD~2 HEAD -- main.c

# AWS S3
aws s3 cp ~/file s3://samual-bucket/folder/
aws s3 sync ~/target s3://samual-bucket

# Bash loops and CF
for i in {1..5}
do
   echo "Hello ${i}"
done

# Return code check
some_command
if [ $? -eq 0 ]; then
    echo OK
else
    echo FAIL
fi
