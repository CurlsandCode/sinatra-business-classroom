class PresentationsController < ApplicationController 

  get "/presentations" do
    @presentations = Presentation.all.find_all{|presentation| presentation.presentation_type == "assignment"}
    @title = "Assignment "
    erb :"presentations/index"
  end

  get "/introductions" do
    @presentations = Presentation.all.find_all{|presentation| presentation.presentation_type == "introduction"}
    @title = "Introduction "
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
    @presentation = Presentation.find_by(:student_id => session[:user_id], :presentation_type => "assignment")
    erb :"/presentations/assignment_edit"
  end

  get "/presentations/introduction/edit" do
    @introduction = Presentation.find_by(:student_id =>session[:user_id], :presentation_type => "assignment") # change presentation type to "introduction"
    erb :"/presentations/introduction_edit"
  end
end
