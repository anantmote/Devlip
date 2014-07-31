class Admin::SectionsController < ApplicationController
  
  def index
  	@section = Section.all
  end

  def show
  	@section = Section.find(params[:id])
  end

  def new
  	@section = Section.new
  end
  
  def create
    @section = Section.new(section_params)    # Not the final implementation!
     if @section.save
       flash[:success] = "Section is added successfully!"
       redirect_to [:admin, @section]
    else
      render 'new'
    end
  end

  def edit
    @section = Section.find(params[:id])
  end

  def update
    @section = Section.find(params[:id])
    if @section.update_attributes(section_params)
      flash[:success] = "Section is updated successfully!"
      redirect_to [:admin_section]
    else
      render 'edit'
    end
  end

  def destroy
    Section.find(params[:id]).destroy
    flash[:success] = "Section deleted successfully"
    redirect_to [:admin_sections]
  end

  private
    def section_params
       params.require(:section).permit(:title,:course_id,:videourl)
    end
 

end
