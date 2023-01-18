#!/bin/bash
set -e
all_args=${@:2}
cd $1 && mvn org.owasp:dependency-check-maven:check ${all_args}
