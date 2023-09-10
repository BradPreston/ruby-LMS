## Starting the app

Build the docker image

```
make build
```

Start the container

```
make up
```

Create the database

```
make db-create
```

---

Once these commands have been run, you can stop the Docker container with

```
make down
```

and restart it with

```
make up
```

## Migrations and Seeds

Run the migrations

```
make db-migrate
```

Seed the database

```
make db-seed
```
