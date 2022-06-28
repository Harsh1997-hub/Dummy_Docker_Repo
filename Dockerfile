#this is the base image

FROM golang:1.14

#creating the working directory in the image

RUN mkdir /app

#copying files into the app folder in the container

COPY . /app

WORKDIR /app

RUN go build main.go

#WORKDIR /app

CMD [ "/app/main" ]