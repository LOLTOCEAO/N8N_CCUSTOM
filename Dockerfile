# Dockerfile
FROM n8nio/n8n:1.49.0  # ou latest

# Installer ffmpeg et yt-dlp
USER root
RUN apt-get update && apt-get install -y ffmpeg python3-pip \
    && pip3 install yt-dlp \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

USER node
CMD ["n8n", "start"]
