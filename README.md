# `wait-for-it.sh` and `curl` on a box
Handy container to use on a docker-compose, whenever one service needs to wait for another one before starting.

## Run

```
docker run wait-for-it-and-curl bash wait-for-it.sh http://www.google.com -- curl -X GET http://www.google.com
```