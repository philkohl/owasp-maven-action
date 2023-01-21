#!/bin/bash
set -e
all_args=$@

ls -l /github/home/

mvn help:evaluate -Dexpression=settings.localRepository | grep -v '\[INFO\]'

mvn org.owasp:dependency-check-maven:check ${all_args}
