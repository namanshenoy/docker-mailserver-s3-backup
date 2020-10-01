#! /bin/bash
NEW_RELIC_CONFIG_FILE=newrelic.ini NEW_RELIC_SHUTDOWN_TIMEOUT=2.5 newrelic-admin run-program python backup.py
echo
