class StudentsController < ApplicationController 

  get "/students" do
    @students = Student.all
    erb :"students/index"
  end

  get "/students/:id" do
    @student = Student.find(params[:id])
    erb :"/students/show"
  end

end
