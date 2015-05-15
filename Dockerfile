FROM siutoba/docker-web:v1.0
MAINTAINER ablanco@siu.edu.ar

COPY gestion.sh /entrypoint.d/
COPY autogestion.sh /entrypoint.d/
RUN mkdir /var/local/autogestion_conf/
COPY var/autogestion/* /var/local/autogestion_conf/

ENV JASPER_HOST jasper
ENV JASPER_PORT 8081

RUN chmod +x /entrypoint.d/*.sh

