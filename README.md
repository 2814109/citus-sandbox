# citus-sandbox

## create citus image

```bash
docker run -d --name citus -p 5432:5432 -e POSTGRES_PASSWORD=mypass \
           citusdata/citus:12.1
```

## verify it's running, and that Citus is installed:

- in container

```bash
psql -U postgres -h localhost -d postgres -c "SELECT * FROM citus_version();"
```
