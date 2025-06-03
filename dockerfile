# Dockerfile pour l’API OpenWA (wa-automate)
FROM openwa/wa-automate:latest

# Exposer le port par défaut (8080)
ENV PORT=8080
EXPOSE 8080

# Chemin persistant pour la session
ENV SESSION_DATA_PATH=/usr/src/app/sessions

# Lancer l’application en mode « headless » mais AVEC QR
CMD [
  "node", "./node_modules/@open-wa/wa-automate/bin/server.js",
  "--session-data-path", "/usr/src/app/sessions",
  "--headless",
  "--ui"
]
