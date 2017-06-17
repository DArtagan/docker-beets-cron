FROM gbrks/beets
MAINTAINER William Weiskopf <william@weiskopf.me>

USER root
COPY crontab /crontab.temp
RUN /usr/bin/crontab /crontab.temp

ENTRYPOINT []

CMD crond -l 0 -f

