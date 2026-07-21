#!/bin/bash
# Fail if rsyslog isn't running or isn't listening on 514
pgrep -x rsyslogd > /dev/null || exit 1
ss -uln | grep -q ':514 ' || ss -tln | grep -q ':514 ' || exit 1
exit 0