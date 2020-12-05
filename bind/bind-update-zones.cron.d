SHELL=/bin/bash
@hourly root set -o pipefail && /usr/local/bin/bind-update-zones 2>&1 | /usr/bin/logger -t bind-update-zones && /usr/sbin/rndc reload
