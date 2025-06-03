# Dockerfile pour l’API OpenWA (wa-automate)
FROM openwa/wa-automate:latest

# Exposer le port par défaut
ENV PORT=8080
EXPOSE 8080

# Utiliser un chemin persistant pour stocker la session (fourni par Render)
ENV SESSION_DATA_PATH=/usr/src/app/sessions

# Lancer l'application avec session persistante et UI activée
CMD [
  "--session-data-path", "/usr/src/app/sessions",
  "--headless",
  "--ui"
]
