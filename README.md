# docker-beets-cron
Beets: daily monitoring and importing music from a directory.  A child of the gbrks/beets Docker image.

Runs every day at 4:00am.  You could change that by mounting a new crontab file over `/crontab`.

As this is a child of gbrks/beets, you'll still want to mount the config, music, and working folders.

Run it like this:
```bash
$ docker run --rm -it \
    -v /etc/localtime:/etc/localtime:ro \
    -v /<path/to/music>:/music \
    -v /opt/appdata/beets:/config \
    -v $(pwd):/working \
    -v /<path/to/alternate/crontab>:/crontab:ro
    dartagan/beets-cron
```

The `-v /etc/localtime:/etc/localtime:ro` bit sets the timezone to be the same as the host.

