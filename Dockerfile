FROM python:3.11-slim

RUN apt-get update && apt-get install -y curl gnupg2 ca-certificates && \
    curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && \
    apt-get install -y nodejs && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN npx playwright install-deps

COPY requirements.txt /tmp/

RUN pip install --upgrade pip
RUN pip install -r /tmp/requirements.txt
RUN rfbrowser init

WORKDIR /tests
COPY . /tests

CMD ["robot", "."]