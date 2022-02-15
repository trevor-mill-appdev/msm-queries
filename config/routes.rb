Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index" })

  get("/directors/youngest", { :controller => "directors", :action => "youngest" })
  
  get("/directors/eldest", { :controller => "directors", :action => "oldest" })

  get("/directors/:id", { :controller => "directors", :action => "director_page" })

  get("/movies", { :controller => "movies", :action => "index" })

  get("/movies/:id", { :controller => "movies", :action => "movie_page" })

  get("/actors", { :controller => "actors", :action => "index" })

  get("/actors/:id", { :controller => "actors", :action => "actor_page" })
  
end
