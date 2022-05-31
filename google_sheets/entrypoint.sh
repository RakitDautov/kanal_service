#! /bin/bash

python3 manage.py makemigrations my_app

python3 manage.py migrate --no-input

python3 manage.py collectstatic --no-input

gunicorn google_sheets.wsgi:application --bind 0.0.0.0:8000
