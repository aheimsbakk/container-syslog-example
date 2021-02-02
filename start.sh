#!/bin/bash

# start rsyslog
rsyslogd

# start my application in background, in this case a script
(
while true; do
  logger Logger dato hvert sekund - $(date)
  sleep 1
done
) &

# wait for the application pid before exiting
wait $!
