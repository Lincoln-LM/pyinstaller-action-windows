FROM cdrx/pyinstaller-windows
FROM python:3.11.0-slim

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
