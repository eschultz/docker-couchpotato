# docker-couchpotato

Docker image for CouchPotato Movie Downloader

Run with:

```
docker run -d \
           -p 5050:5050 \
           -v <state-dir>:/mnt/state \
           -v <movies-dir>:/mnt/movies \
           couchpotato
```

