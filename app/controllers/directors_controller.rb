class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all
    

    render({ :template => "director_templates/index.html.erb"})
  end

  def youngest
    @min_dob = Director.minimum(:dob)
    @youngest = Director.where({ :dob => @min_dob }).first
    

    render({ :template => "director_templates/youngest_director.html.erb"})
  end

  def oldest
    

  end

  def director_page
    @director_id = params.fetch(:id).to_i
    @director = Director.where({ :id => @director_id }).at(0)
    @name = @director.name
    @dob = @director.dob
    @bio = @director.bio
    @created = @director.created_at
    @updated = @director.updated_at

    render({ :template => "director_templates/director_page.html.erb"})
  end
end