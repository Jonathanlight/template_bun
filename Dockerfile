FROM ubuntu:latest

RUN apt-get update && apt-get install -y curl unzip

# Install Bun
RUN curl -fsSL https://bun.sh/install | bash

ENV PATH="/root/.bun/bin:$PATH"

WORKDIR /app

COPY . .

# Install dependencies
RUN bun install

# Expose the port your app runs on
EXPOSE 3000

# Command to run your application
CMD ["bun", "start"]
