#!/bin/bash

python /app/manage.py makemigrations 
python /app/manage.py migrate 
mod_wsgi-express start-server --working-directory /app --reload-on-changes /app/web/wsgi.py