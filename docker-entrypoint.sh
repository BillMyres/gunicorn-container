#!/bin/bash

set -e

cd /root

if [ -f "/root/manage.py" ]; then
  pipenv sync
  pipenv run gunicorn portfolio.wsgi -b 0.0.0.0:80
fi

exec "$@"
