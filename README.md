# Gunicorn Container

Docker container for gunicorn and pipenv applications.

**Mount project volume to /root**

Change the following line in `docker-entrypoint.sh` to fit your projects needs:

```
pipenv run gunicorn portfolio.wsgi -b 0.0.0.0:80
```
