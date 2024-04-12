package main

import (
    "encoding/json"
    "net/http"
    "sync"
    "github.com/gorilla/mux"
)

// Item - Our struct for all items
type Item struct {
    ID    string `json:"id"`
    Name  string `json:"name"`
}

var database []Item
var lock sync.Mutex

func main() {
    router := mux.NewRouter()

    router.HandleFunc("/items", GetItems).Methods("GET")
    router.HandleFunc("/items/{id}", GetItem).Methods("GET")
    router.HandleFunc("/items", CreateItem).Methods("POST")
    router.HandleFunc("/items/{id}", DeleteItem).Methods("DELETE")

    http.ListenAndServe(":8000", router)
}

// GetItems - retrieves all items
func GetItems(w http.ResponseWriter, r *http.Request) {
    lock.Lock()
    json.NewEncoder(w).Encode(database)
    lock.Unlock()
}

// GetItem - retrieves a single item by ID
func GetItem(w http.ResponseWriter, r *http.Request) {
    params := mux.Vars(r)
    for _, item := range database {
        if item.ID == params["id"] {
            json.NewEncoder(w).Encode(item)
            return
        }
    }
    w.WriteHeader(http.StatusNotFound)
}

// CreateItem - adds a new item to the database
func CreateItem(w http.ResponseWriter, r *http.Request) {
    var item Item
    _ = json.NewDecoder(r.Body).Decode(&item)
    lock.Lock()
    database = append(database, item)
    lock.Unlock()
    json.NewEncoder(w).Encode(item)
}

// DeleteItem - deletes an item from the database by ID
func DeleteItem(w http.ResponseWriter, r *http.Request) {
    params := mux.Vars(r)
    for index, item := range database {
        if item.ID == params["id"] {
            lock.Lock()
            database = append(database[:index], database[index+1:]...)
            lock.Unlock()
            break
        }
    }
}
