#!/bin/bash
set -e
all_args=$@
mvn org.owasp:dependency-check-maven:${all_args}
