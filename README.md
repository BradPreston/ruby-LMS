## Starting the app

Build the docker image

```
docker compose build
```

Start the container

```
docker compose up -d
```

Create the database

```
docker compose run web rake db:create
```

---

Once these commands have been run, you can stop the Docker container with

```
docker compose down
```

and restart it with

```
docker compose up -d
```

## Migrations

Run the migrations
```
docker compose run web rake db:migrate
```