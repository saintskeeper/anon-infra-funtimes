docker run -d -p 8000:8000 my-go-app


curl http://localhost:8000/items

curl -X POST http://localhost:8000/items -d '{"id":"1", "name":"Item 1"}' -H "Content-Type: application/json"

curl http://localhost:8000/items