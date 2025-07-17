# Imagem base com suporte a apt-get
FROM node:18-bullseye

# Atualiza e instala dependências e ffmpeg
RUN apt-get update && \
    apt-get install -y ffmpeg && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Instala o N8N globalmente
RUN npm install -g n8n

# Expõe a porta padrão do N8N
EXPOSE 5678

# Comando que inicia o N8N
CMD ["n8n"]





