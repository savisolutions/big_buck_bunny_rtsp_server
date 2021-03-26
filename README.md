# Big Buck Bunny RTSP Server

```shell
# Build
docker build -t rtsp-server .
# Run
docker run -p 8554:8554 -d rtsp-server
```

```shell
# FFprobe
ffprobe -rtsp_transport tcp -i rtsp://localhost:8554/big-buck-bunny
# FFplay
ffplay -rtsp_transport tcp -i rtsp://localhost:8554/big-buck-bunny
```
