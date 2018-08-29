## start container

```
IMG=kino/bws:<TAG> docker-compose run -d -e DISPLAY=unix$DISPLAY -e uid=$(id -u) -e gid=$(id -g) bws
```

## images

```
https://hub.docker.com/r/kino/bws/tags/
```
