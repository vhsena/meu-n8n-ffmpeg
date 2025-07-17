# Usa uma imagem baseada no Debian com Node.js (permite apt-get)
FROM node:18-bullseye

# Instala o ffmpeg usando apt-get
RUN apt-get update && apt-get install -y ffmpeg

# Instala o N8N globalmente
RUN npm install -g n8n

# Expõe a porta padrão do N8N
EXPOSE 5678

# Comando que inicia o N8N
CMD ["n8n"]



