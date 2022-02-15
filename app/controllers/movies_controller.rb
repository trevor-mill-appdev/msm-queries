class MoviesController < ApplicationController

  def index
    @list_of_movies = Movie.all

    render({ :template => "movie_templates/index.html.erb" })
  end

  def movie_page

    @movie_id = params.fetch(:id).to_i
    @movie = Movie.where(:id => @movie_id).at(0)
    @title = @movie.title
    @year = @movie.year
    @duration = @movie.duration
    @description = @movie.description
    director = Director.where({ :id => @movie.director_id}).first
    @director_name = director.name
    @created = @movie.created_at
    @updated = @movie.updated_at

    render({ :template => "movie_templates/movie_page.html.erb"})
  end
end