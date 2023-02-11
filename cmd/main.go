package main

import (
	"log"

	"github.com/shamik230/todo-app"
	"github.com/shamik230/todo-app/pkg/handler"
)

func main() {
	handlers := new(handler.Handler)
	srv := new(todo.Server)
	if err := srv.Run("8080", handlers.InitRoutes()); err != nil {
		log.Fatalf("error occured while running http server: %s\n", err.Error())
	}
}
