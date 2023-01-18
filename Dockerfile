FROM philkohl/owasp-maven-action:latest

COPY entrypoint.sh /entrypoint.sh

COPY /home/runner/.m2/repository /root/.m2/repository
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/bin/sh","/entrypoint.sh"]