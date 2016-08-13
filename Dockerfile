FROM gbrks/beets
MAINTAINER William Weiskopf <william@weiskopf.me>

COPY crontab /var/spool/cron/crontabs/beets

USER root

ENTRYPOINT []

CMD crond -l 0 -f

