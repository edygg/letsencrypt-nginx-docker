#!/bin/sh

set -o errexit      # >> Exit immediately if a command exits with a non-zero status.
set -o pipefail     # >> The return value of a pipeline is the status of
                    #    the last command to exit with a non-zero status,
                    #    or zero if no command exited with a non-zero status
set -o nounset      # >> Treat unset variables as an error when substituting.

certbot certonly --webroot --email $(ADMIN_EMAIL) --agree-tos --no-eff-email --webroot-path=/data/letsencrypt --staging -d $(echo $HOSTS | sed "s/ \+/,/")