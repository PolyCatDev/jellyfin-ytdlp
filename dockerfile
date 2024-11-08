FROM jellyfin/jellyfin:latest

LABEL org.opencontainers.image.source https://github.com/PolyCatDev/jellyfin-ytdlp

RUN apt-get update && apt-get install -y \
    python3-pip

RUN python3 -m pip install --break-system-packages -U yt-dlp
