#!/bin/sh
python manage.py migrate --no-input
python manage.py collectstatic --no-input
gunicorn --bind :8000 recallcontrol.wsgi