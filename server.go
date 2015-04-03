package main

import (
	"github.com/go-martini/martini"
	"github.com/martini-contrib/render"
	"net/http"
)

func main() {
	//store := sessions.NewCookieStore([]byte("secret123"))
	//dbmap = initDb()

	m := martini.Classic()
	m.Use(render.Renderer())

	m.Get("/", func(r render.Render) {
		r.HTML(200, "index", nil)
	})

	static := martini.Static("assets", martini.StaticOptions{Fallback: "/404.html"})
	m.NotFound(static, http.NotFound)

	
	m.Run()
}