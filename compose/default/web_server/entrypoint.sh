#!/bin/sh

set -o errexit      # >> Exit immediately if a command exits with a non-zero status.
set -o pipefail     # >> The return value of a pipeline is the status of
                    #    the last command to exit with a non-zero status,
                    #    or zero if no command exited with a non-zero status
set -o nounset      # >> Treat unset variables as an error when substituting.

(envsubst < /etc/nginx/conf.d/default.conf.template) > /etc/nginx/conf.d/default.conf
nginx -g 'daemon off;'