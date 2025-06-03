# Dockerfile pour l’API OpenWA (wa-automate)
FROM openwa/wa-automate:latest
# Exposer le port par défaut (8080) ou un port personnalisé
ENV PORT=8080
EXPOSE 8080
# Commande de démarrage : activer l’interface interactive (swagger) et exécuter en headless
CMD ["--disable-qr-code", "--headless", "--ui"]
