Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index" })

  get("/directors/youngest", { :controller => "directors", :action => "youngest" })
  
  get("/directors/oldest", { :controller => "directors", :action => "oldest" })
  
end
