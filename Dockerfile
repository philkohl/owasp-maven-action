FROM philkohl/owasp-maven-action:latest

ENTRYPOINT ["mvn", "org.owasp:dependency-check-maven:check", "-DdataDirectory=/dependency-check/data", "-DfailBuildOnCVSS=5"]