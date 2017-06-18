class PresentationsController < ApplicationController 

  get "/presentations" do
    @presentations = Presentation.all
    erb :"presentations/index"
  end

  # to make this work properly, include current_user method to check for validity
  get "/presentations/assignment/new" do
    erb :"/presentations/assignment_new"
  end

  get "/presentations/introduction/new" do
    erb :"/presentations/introduction_new"
  end
  
  get "/presentations/assignment/edit" do
    erb :"/presentations/assignment_edit"
  end

  get "/presentations/introduction/edit" do
    erb :"/presentations/introduction_edit"
  end
end
