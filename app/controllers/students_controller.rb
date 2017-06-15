class StudentsController < ApplicationController 

  get "/students" do
    @students = Student.all
    erb :"students/index"
  end

  get "/students/:id" do
    @student = Student.find(params[:id])
    @presentation = Presentation.find_by(:student_id => params[:id], :presentation_type => "assignment")
    erb :"/students/show"
  end

end
