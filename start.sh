#!/bin/sh

# python3 /app/manage.py makemigrations
# Apply database migrations
python3 /app/manage.py migrate

# Start the Django development server
python3 /app/manage.py runserver 0.0.0.0:8000
