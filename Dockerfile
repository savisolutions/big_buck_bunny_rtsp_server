FROM aler9/rtsp-simple-server AS build

FROM alpine:3.7 AS app

RUN apk update && apk add --no-cache supervisor openssl ncurses-libs ffmpeg

COPY --from=build /rtsp-simple-server /

COPY BigBuckBunny.mov /BigBuckBunny.mov
COPY rtsp-simple-server.yml /rtsp-simple-server.yml

CMD /rtsp-simple-server
