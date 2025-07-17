FROM n8nio/n8n:0.222.1

USER root
RUN apt-get update && apt-get install -y ffmpeg
USER node


