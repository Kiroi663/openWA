# Dockerfile pour l’API OpenWA (wa-automate)
FROM openwa/wa-automate:latest

# Exposer le port par défaut (8080)
ENV PORT=8080
EXPOSE 8080

# Définir le chemin où la session sera stockée (ce dossier sera monté par Render)
ENV SESSION_DATA_PATH=/usr/src/app/sessions

# Lancer l’application : 
#   - on indique explicitement l’exécutable (bin/server.js) 
#   - puis on passe la liste complète des flags dans un seul CMD JSON
CMD ["node", "./node_modules/@open-wa/wa-automate/bin/server.js", \
     "--session-data-path", "/usr/src/app/sessions", \
     "--headless", \
     "--ui"]
