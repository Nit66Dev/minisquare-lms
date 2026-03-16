FROM mono:latest

RUN apt-get update && \
    apt-get install -y mono-xsp4 && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . .

EXPOSE 8080

CMD ["xsp4", "--port", "8080", "--nonstop"]
