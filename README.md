# docker-sqliteweb
SQLite database web administration tool running on Docker

Read more on sqlite-web at [charlesleifer.com](http://charlesleifer.com/blog/web-based-sqlite-database-browser-using-flask/).

## Usage

Let say your project uses a SQLite database file `./my_database.db`, run the docker container with:

    docker run -d -p 8080:8080 -v $(pwd)/my_database.db:/db/my_database.db tomdesinto/sqliteweb my_database.db
    

## docker-compose example

```
sqliteweb:
  image: tomdesinto/sqliteweb
  ports:
    - 8080:8080
  volumes:
    - ./my_database.db:/db/my_database.db
  command: my_database.db
```

----

## Build the docker image yourself

    git clone https://github.com/thomasleveil/docker-sqliteweb.git
    docker build -t sqliteweb docker-sqliteweb
    
Then test it: 

    docker run --rm sqliteweb --help
