FROM cdrx/pyinstaller-windows
FROM python:3.11.0-slim

FROM debian:bullseye
RUN apt-get update && \
    apt-get install -y binutils build-essential

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
