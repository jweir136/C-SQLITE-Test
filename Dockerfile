FROM gcc:4.9
FROM ubuntu:latest

WORKDIR /usr/src/app

# copy the files from this dir to the image.
COPY . .

# Install SQLITE3 on ubuntu
RUN apt-get update && sudo apt-get upgrade
RUN apt-get install sqlite3 libsqlite3-dev

# Compile
RUN make build

# run tests and main
CMD ["make test", "./app"]