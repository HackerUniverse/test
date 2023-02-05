FROM python:3.8-alpine

WORKDIR /app

COPY requirements.txt .

RUN apk add --no-cache --update \
    chromium \
    chromium-chromedriver \
    && apk add --no-cache --update --virtual build-dependencies \
    build-base \
    python3-dev \
    && pip install --no-cache-dir -r requirements.txt \
    && apk del build-dependencies

# Create a non-root user
RUN adduser -D myuser

USER myuser

# Run chromedriver command as non-root user
RUN chromedriver --version

COPY sample.py .

CMD ["python", "sample.py"]
