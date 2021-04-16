#!/usr/bin/env bash
set -euo pipefail

# Snyk with larger heap
GRADLE_OPTS="-Xmx4g" snyk test --all-sub-projects --org=pleo

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

# To run a specific test in Gradle
./gradlew :pleo-ymir-api:cleanTest :pleo-ymir-api:test --tests "io.pleo.ymir.models.ThreeDSecureVersionTest"

# JQ magic
cat resp.json | jq -r '.access_token as $token | "export VIIA_ACCESS_TOKEN=\($token)"'

# Ironic
history -d $((HISTCMD-2))

# Dropwizard
server:
  applicationConnectors:
    - type: http
      port: 8080
  adminConnectors:
    - type: http
      port: 8081

# Postgres jsonb
SELECT info->>'name'
FROM rabbits
WHERE info->'food' @> '"carrots"';

# Postgres filter by date
select * from cupid_walletload w
  where w.created_at >= '2021-01-28 00:00:00' 
  and w.created_at < '2021-02-09 00:00:00'
  order by w.created_at desc

# UTC Instant
"2021-02-09T14:42:57.960Z"

# Auth header
echo -n user:password | base64

# Random alphanum for osx
RANDO=$(env LC_CTYPE=C LC_ALL=C tr -dc "a-zA-Z0-9" < /dev/urandom | head -c 10; echo)
