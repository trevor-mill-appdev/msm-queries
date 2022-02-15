class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all

    render({ :template => "actor_templates/index.html.erb" })
  end

  def actor_page
    @actor_id = params.fetch(:id).to_i
    @actor = Actor.where({:id => @actor_id}).first
    
    @roles = Character.where({:actor_id => @actor_id})


    render({ :template => "actor_templates/actor_page.html.erb"})
  end
end