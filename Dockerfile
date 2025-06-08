FROM n8nio/n8n:1.49.0

USER root

# Installer ffmpeg, python3, pip et yt-dlp sur Alpine
RUN apk add --no-cache ffmpeg python3 py3-pip && \
    pip3 install yt-dlp

USER node

CMD ["n8n", "start"]
