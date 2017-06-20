class StudentsController < ApplicationController 

  get "/signup" do
    session[:user_id] ? (redirect to "/") : (erb :'/students/signup')
  end

  post "/signup" do
    student = Student.new(params)
    if student.save
      session[:user_id] = student.id
      redirect to "/"
    else
      redirect to "/signup"
    end
  end

  get "/students" do
    @students = Student.all
    erb :"students/index"
  end

  get "/students/:id" do
    @student = Student.find(params[:id])
    @introduction = Presentation.find_by(:student_id => params[:id], :presentation_type => "introduction") # change presentation type to "introduction"
    @presentation = Presentation.find_by(:student_id => params[:id], :presentation_type => "assignment")
    erb :"/students/show"
  end

  get "/students/:id/edit" do
    redirect to "/students/#{params[:id]}" unless Student.find(params[:id]) == current_user
    @student = Student.find(params[:id])
    erb :"students/edit"
  end

  post "/students/:id" do
    @student = Student.find(params[:id])
    @student.update(params[:student])
    redirect "/students/#{params[:id]}"
  end

end
