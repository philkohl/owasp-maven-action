#!/bin/bash
set -e
all_args=$@

echo /github/home/
ls -l /github/home/

echo .
ls -l .

echo pwd
pwd

mvn help:evaluate -Dexpression=settings.localRepository | grep -v '\[INFO\]'

mvn org.owasp:dependency-check-maven:check ${all_args}
