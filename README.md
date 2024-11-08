# jellyfin-ytdlp

A a modified [LinuxServer Jellyfin Image](https://docs.linuxserver.io/images/docker-jellyfin/) with [yt-dlp](https://github.com/yt-dlp/yt-dlp) added on top of it for the [jellyfin-youtube-metadata-plugin](https://github.com/ankenyr/jellyfin-youtube-metadata-plugin)

> [!TIP]
> A new image will be availabe every week on a monday at 3 AM Europe/Bucharest time

### Docker Compose Example

```yaml
services:
  jellyfin:
    image: ghcr.io/polycatdev/jellyfin-ytdlp:latest
    container_name: jellyfin
    hostname: jellyfin
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Etc/UTC
    volumes:
      - ./config:/config
    ports:
      - 3020:8096
      # - 8920:8920 #optional
      # - 7359:7359/udp #optional
      # - 1900:1900/udp #optional
    restart: unless-stopped

```