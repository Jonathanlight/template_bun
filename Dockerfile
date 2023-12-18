FROM oven/bun:latest as build-stage

WORKDIR /app

COPY . .

# If use production change .env.stg to .env.production
COPY ./app/.env.stg .env
COPY ./app/package.json package.json
COPY ./app/bun.lockb bun.lockb

RUN bun install
RUN bun build ./app/server.js --compile --outfile server

# Reduce image size
FROM  --platform=linux/amd64 oven/bun:latest

WORKDIR /app

# COPY --from=build-stage /dist/.env ./.env
# COPY --from=build-stage /dist/server ./server

EXPOSE 8080

CMD ["./server"]