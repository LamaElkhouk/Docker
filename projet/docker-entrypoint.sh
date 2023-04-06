#!/bin/bash
# Attendre que la base de données soit prête
until nc -z -v -w30 mon_app_web 3306
do
  echo "En attente de la base de données..."
  # Attendre pendant 10 seconde avant de vérifier à nouveau
  sleep 10
done
echo "La base de données est prête !"

# Lancer les migrations
python manage.py migrate --noinput


# Lancer l'application
python manage.py runserver 0.0.0.0:8000


