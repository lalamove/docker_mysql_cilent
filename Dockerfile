FROM migrate/migrate:4 AS migrate

FROM mysql:5.6 AS mysql

RUN apt-get update && apt-get install -q -y netcat && rm -rf /var/lib/apt/lists/*
COPY --from=migrate /migrate /migrate