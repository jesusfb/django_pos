#!/usr/bin/env bash
# Exit on error
set -o errexit

# Modify this line as needed for your package manager (pip, poetry, etc.)
pip3 install -r requirements.txt

python3 manage.py migrate

# Convert static asset files
python3 manage.py collectstatic --no-input

# Apply any outstanding database migrations


# Desplegar en render
#https://docs.render.com/deploy-django