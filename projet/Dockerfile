# Utilisez une image de python
FROM python:3.9

# Setup env
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONFAULTHANDLER 1

# Définit le répertoire de travail
WORKDIR /app

# Copie le fichier Pipfile et Pipfile.lock dans l'espace de travail

# Copie le code source dans le conteneur
COPY . /app

# Installe les dépendances à partir du fichier Pipfile
RUN apt-get update && \
    apt-get install -y netcat && \
    apt-get install -y default-libmysqlclient-dev && \
    pip install pipenv
RUN pipenv install --system

# Copie le script d'entrée dans le conteneur


# Donne l'exécution au script d'entrée
CMD ["/bin/bash", "/app/docker-entrypoint.sh"]