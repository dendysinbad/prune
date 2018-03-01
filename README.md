# izonder/prune

[![](https://images.microbadger.com/badges/version/izonder/prune.svg)](https://microbadger.com/images/izonder/prune "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/izonder/prune.svg)](https://microbadger.com/images/izonder/prune "Get your own image badge on microbadger.com")

Docker system prune manager. It uses the command:

```bash
docker system prune -f
```

### How to use?

Simple CLI run:
```bash
docker run
    --rm 
    -d
    -v /var/run/docker.sock:/var/run/docker.sock
    izonder/prune
```

You can add extra settings, e.g. to remove ALL images which were created more than 24 hours ago:
```bash
docker run
    --rm 
    -d
    -v /var/run/docker.sock:/var/run/docker.sock
    izonder/prune
    -a --filter "until=24h"
```

### Run with docker-compose
 
```yaml
version: '2'

services:
  docker-prune:
    image: izonder/prune
    environment:
      SLEEP: 86400
    volumes:
    - /var/run/docker.sock:/var/run/docker.sock
    command:
    - "-a"
    - "--filter until=24h"
    deploy:
      mode: global
```

### Disclaimer

Inspired by [liske/docker-prune](https://github.com/liske/docker-prune)
