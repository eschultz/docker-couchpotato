# docker-couchpotato

Docker image for CouchPotato Movie Downloader

Run with:

```
docker run -d \
           -p 5050:5050 \
           -v <config-dir>:/config \
           -v <movies-dir>:/data \
           couchpotato
```

