# README

Video to watch in udemy: 74. Deep Dive: Rails Routing and Data Flow - Part 2 of 3

## Running the project in a docker container

To start the server with a database, run this command in a project root directory:

```
docker compose up
```

If you are launching server first time, you may need to create and seed a database: `docker compose run web rails db:reset`

Server can be reached by entering: ```http://localhost:3000/``` in a browser.

To stop the server with a database:

```
docker compose down
```

If you need to rebuild the container (e.g. after updating some gems in `Gemfile`), run:

```
docker compose run web bundle install
docker compose up --build
```
