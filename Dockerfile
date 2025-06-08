FROM node:18-bullseye-slim

# Installer ffmpeg, python3, pip
RUN apt-get update && apt-get install -y ffmpeg python3 python3-pip \
    && pip3 install yt-dlp \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Installer n8n globalement
RUN npm install -g n8n

# Définir utilisateur non-root (optionnel)
# RUN useradd -ms /bin/bash n8nuser
# USER n8nuser

EXPOSE 5678

CMD ["n8n", "start"]
