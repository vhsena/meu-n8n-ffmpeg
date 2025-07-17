FROM node:18-bullseye

# Instala o ffmpeg usando apt-get
RUN apt-get update && apt-get install -y ffmpeg && apt-get clean && rm -rf /var/lib/apt/lists/*

# Instala o N8N globalmente
RUN npm install -g n8n

# Expor porta
EXPOSE 5678

# Inicia o N8N
CMD ["n8n"]




