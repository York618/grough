FROM ubuntu:latest
ADD entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
