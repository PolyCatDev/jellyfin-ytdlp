FROM linuxserver/jellyfin:latest

RUN apt-get update && apt-get install -y \
    python3-pip

RUN python3 -m pip install --break-system-packages -U yt-dlp
