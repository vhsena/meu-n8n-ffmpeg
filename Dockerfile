FROM n8nio/n8n:1.46.0-debian

USER root
RUN apt-get update && apt-get install -y ffmpeg
USER node

