FROM gcc:4.9
FROM ubuntu:latest

WORKDIR /usr/src/app

# copy the files from this dir to the image.
COPY . .

# Install SQLITE3 on ubuntu
RUN apt-get -y update && apt-get -y upgrade && apt-get -y install sqlite3 libsqlite3-dev && apt-get -y install build-essential

CMD ["make test", "make run"]