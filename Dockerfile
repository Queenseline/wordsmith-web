# syntax=docker/dockerfile:1
FROM golang:1.19
# Set destination for COPY
WORKDIR /app
# Download Go modules
COPY . ./
RUN go mod init wordsmith
RUN go mod tidy
# Build
RUN go build
EXPOSE 80
# Run
CMD ["./wordsmith"]