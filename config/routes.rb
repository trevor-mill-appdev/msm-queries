Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index" })

  get("/directors/youngest", { :controller => "directors", :action => "youngest" })
  
  get("/directors/eldest", { :controller => "directors", :action => "oldest" })

  get("/directors/:id", { :controller => "directors", :action => "director_page" })

  get("/movies", { :controller => "movies", :action => "index" })
  
end
