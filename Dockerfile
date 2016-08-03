FROM gbrks/beets
MAINTAINER William Weiskopf <william@weiskopf.me>

COPY root /var/spool/cron/crontabs/root

ENTRYPOINT []

CMD crond -l 2 -f
