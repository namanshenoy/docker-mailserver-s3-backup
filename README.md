# GPNN Mail backup

## Introduction
This is a script that gathers the mail data from [docker-mailserver](https://github.com/tomav/docker-mailserver) and uploads them to a defined S3 bucket.

## Usage
This is meant to run as a cronjob repeatedly.
To run this:
* Git clone this.
* Use GPG to decrypt the secrets.json.gpg file
* Update any settings as required
* Add the python file to your root user's crontab
