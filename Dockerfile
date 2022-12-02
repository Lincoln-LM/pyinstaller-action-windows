FROM cdrx/pyinstaller-windows

FROM debian:bullseye
RUN apt-get update && \
    apt-get install -y binutils

FROM python:3.11.0-slim

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
