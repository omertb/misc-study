

```
docker-compose up -d
docker-compose scale http_server=3
```

> **Tip:** Alternatively, in Compose file version 3.x, you can specify replicas under the deploy key as part of a service configuration for Swarm mode. The deploy key and its sub-options (including replicas) only works with the docker stack deploy command, not docker-compose up or docker-compose run.

##### Resources:
https://docs.docker.com/compose/reference/scale/
https://hub.docker.com/r/eeacms/haproxy
https://hub.docker.com/_/mariadb