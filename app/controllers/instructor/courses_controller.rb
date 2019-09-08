class Instructor::CoursesController < ApplicationController
  before_action :authenticate_user! 
  def new 
    @course = Course.new(course_params)
  end 

  def create 
    @course = current_user.courses.create(course_parmas)
    redirect_to instructor_course_path(@course)
  end 


  def show 
    @course = Course.find(parmas[:id])
  end 

  private 

  def course_params 
    params.required(:course).permit(:title, :descriiption, :cost)
  end 

end
