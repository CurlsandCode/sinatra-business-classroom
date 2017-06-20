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

  post "/presentations/assignment" do
    student = Student.find(session[:user_id])
    assignment = Presentation.create(:presentation_type => "assignment", :youtube_link => params[:presentation_url])
    student.presentations << assignment
    student.save
    redirect to :"/students/#{student.id}"
  end

  post "/presentations/introduction" do
    student = Student.find(session[:user_id])
    introduction = Presentation.create(:presentation_type => "introduction", :youtube_link => params[:presentation_url])
    student.presentations << introduction 
    student.save
    redirect to :"/students/#{student.id}"
  end
  
  get "/presentations/assignment/edit" do
    @presentation = Presentation.find_by(:student_id => session[:user_id], :presentation_type => "assignment")
    binding.pry
    erb :"/presentations/assignment_edit"
  end

  get "/presentations/introduction/edit" do
    @introduction = Presentation.find_by(:student_id =>session[:user_id], :presentation_type => "introduction") # change presentation type to "introduction"
    erb :"/presentations/introduction_edit"
  end

  post "/assignment" do
    presentation = Presentation.find_by(:student_id => session[:user_id], :presentation_type => "assignment")
    presentation.update(:youtube_link => params[:presentation_url])
    redirect to :"/students/#{session[:user_id]}"
  end

  post "/introduction" do
    introduction = Presentation.find_by(:student_id =>session[:user_id], :presentation_type => "introduction") # change presentation type to "introduction"
    introduction.update(:youtube_link => params[:presentation_url])
    redirect to :"/students/#{session[:user_id]}"
  end

end
