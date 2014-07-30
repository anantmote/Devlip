class Admin::CoursesController < ApplicationController
  
  def index
  	@course = Course.all
  end

  def show
  	@course = Course.find(params[:id])
  end

  def new
  	@course = Course.new
  end
  
  def create
    @course = Course.new(course_params)    
    if @course.save
      flash[:success] = "Course is added successfully!"
      redirect_to [:admin, @course]
    else
      render 'new'
    end
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    if @course.update_attributes(course_params)
      flash[:success] = "Course is updated successfully!"
      redirect_to [:admin_course]
    else
      render 'edit'
    end
  end

  def destroy
    Course.find(params[:id]).destroy
    flash[:success] = "Course deleted successfully"
    redirect_to [:admin_courses]
  end

  private
    def course_params
       params.require(:course).permit(:title,:description,:duration)
    end
 

end
