#!/bin/bash

# Thomas vanBommel 2020-06

set -e

# if [ "$1" = "gunicorn" ]; then
cd /root

if [ -f "/root/manage.py" ]; then
  pipenv sync
  pipenv run gunicorn portfolio.wsgi -b 0.0.0.0:80
fi

# fi

exec "$@"
