FROM philkohl/owasp-maven-action:latest

COPY entrypoint.sh /entrypoint.sh

RUN which mvn
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/bin/sh","/entrypoint.sh"]