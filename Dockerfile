FROM python:3.12-slim

WORKDIR /app

COPY app/scoreboarddecoder .
RUN chmod +x scoreboarddecoder

ENV WEB_PORT=8080
ENV PYTHONUNBUFFERED=1

EXPOSE 8080

CMD ["./scoreboarddecoder"]