FROM python:3.8-alpine

WORKDIR /app

COPY requirements.txt .

# Install a specific version of Firefox and GeckoDriver
RUN apk add --no-cache --update \
    firefox \
    geckodriver \
    && apk add --no-cache --update --virtual build-dependencies \
    build-base \
    python3-dev \
    && pip install --no-cache-dir -r requirements.txt \
    && apk del build-dependencies

# Create a non-root user
RUN adduser -D myuser

USER myuser

# Run GeckoDriver command as non-root user
RUN geckodriver --version

COPY sample.py .

CMD ["python", "sample.py"]
