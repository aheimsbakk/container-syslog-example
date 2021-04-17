# syslog-example

Container example how to start a job that logs to syslog, and redirect the log to `/dev/console` or `/dev/stdout`.

## Files

* `Dockerfile` --- container definition
* `rsyslog.conf` --- syslog config config that resides at `/etc/rsyslog.conf`
* `start.sh` --- script to start the service, starts the syslog first then wait for the pid

## Build

```bash
podman build -t test .
```

## Run

Run the `test` image.

```bash
podman  run --rm -ti test
```


