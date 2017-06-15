class StudentsController < ApplicationController 

  get "/students" do
    @students = Student.all
    erb :"students/index"
  end

  get "/signup" do
    erb :"students/signup"
  end

end
