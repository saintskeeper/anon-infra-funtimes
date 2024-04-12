FROM golang:1.22

WORKDIR /app

# Copy go.mod and, if present, go.sum
COPY src/go.mod ./
COPY src/go.sum* ./

RUN go mod download

# Copy the source code
COPY src/ .

RUN go build -o main .

EXPOSE 8000

CMD ["./main"]
