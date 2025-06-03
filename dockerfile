# Dockerfile pour l’API OpenWA (wa-automate)
FROM openwa/wa-automate:latest

# Exposer le port par défaut
ENV PORT=8080
EXPOSE 8080

# Définir le chemin persistant pour la session
ENV SESSION_DATA_PATH=/usr/src/app/sessions

# Lancer l’application en mode headless AVEC affichage du QR (UI)
CMD ["node", "./node_modules/@open-wa/wa-automate/bin/server.js", "--session-data-path", "/usr/src/app/sessions", "--headless", "--ui"]
