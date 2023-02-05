
USER root

FROM python:3.8-alpine

WORKDIR /app

COPY requirements.txt .

# Install Mozilla Firefox
RUN apk add --no-cache --update \
    firefox \
    && apk add --no-cache --update --virtual build-dependencies \
    build-base \
    python3-dev \
    && pip install --no-cache-dir -r requirements.txt \
    && apk del build-dependencies

# Download and install geckodriver
RUN wget https://github.com/mozilla/geckodriver/releases/download/v0.32.1/geckodriver-v0.32.1-linux64.tar.gz \
    && tar -xvzf geckodriver-v0.32.1-linux64.tar.gz \
    && rm geckodriver-v0.32.1-linux64.tar.gz \
    && mv geckodriver /usr/local/bin/

ENV PATH "$PATH:/usr/lib/firefox"


# Run geckodriver command as non-root user
RUN geckodriver --version

COPY sample.py .

CMD ["python", "sample.py"]
