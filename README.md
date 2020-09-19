# GPNN Mail backup

## Introduction
This is a script that gathers the mail data from [docker-mailserver](https://github.com/tomav/docker-mailserver) and uploads them to a defined S3 bucket.

## Usage
This is meant to run as a cronjob repeatedly.
To run this:
* Git clone this.
* Use GPG to decrypt the secrets.json.gpg file. 
* Update any settings as required
* Add the python file to your root user's crontab

# Monitoring
Monitoring is done by newrelic by gpg decrypting the newrelic.ini file and running the python script with `newrelic-admin run-program`.

[NewRelic Dashboard](https://one.newrelic.com/launcher/dashboards.launcher?pane=eyJuZXJkbGV0SWQiOiJkYXNoYm9hcmRzLmRhc2hib2FyZCIsImVudGl0eUlkIjoiTWpnM09EazBNM3hXU1ZwOFJFRlRTRUpQUVZKRWZERTBNVE16T1RJIiwidXNlRGVmYXVsdFRpbWVSYW5nZSI6ZmFsc2UsImlzVGVtcGxhdGVFbXB0eSI6ZmFsc2V9&platform[accountId]=2878943&platform[$isFallbackTimeRange]=false)

# Helpful notes:
To encrypt: `gpg --symmetric --cipher-algo AES256 filename.ext`

To decrypt: `gpg --decrypt filename.ext.gpg > filename.ext`

Full run command: `NEW_RELIC_CONFIG_FILE=newrelic.ini NEW_RELIC_SHUTDOWN_TIMEOUT=2.5 newrelic-admin run-program python backup.py`
