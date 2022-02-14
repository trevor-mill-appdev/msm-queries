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

end