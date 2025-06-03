# Utiliser l'image Node officielle avec Chrome installé
FROM zenika/node:20-chrome

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers de configuration et de dépendances
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste des fichiers de l'application
COPY . .

# Exposer le port utilisé par l'application
EXPOSE 8080

# Lancer l'application
CMD ["node", "./node_modules/@open-wa/wa-automate/bin/server.js", "--use-chrome", "--in-docker", "--qr-timeout", "0", "--popup", "--debug", "--force-port", "--disable-qr-code", "--headless", "--ui"]
