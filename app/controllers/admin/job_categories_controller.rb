class Admin::JobCategoriesController < ApplicationController

   before_action :set_job_category, only: %i[show edit update destroy]

  def index
    @job_categories = JobCategory.select(:id, :name)
  end
  def new
    @job_category = JobCategory.new
  end
  def create 
    @job_category = JobCategory.new(job_category_params)
    if @job_category.save
      redirect_to admin_job_categories_path ,notice: 'JobCategory has be created successfully'
    else
      render :edit
    end
  end

  def show  
  end

  def edit   
  end

  def update  
   if  @job_category.update(job_category_params)
    redirect_to admin_job_categories_path ,notice: 'JobCategory has be update successfully'
   else
    render :edit
   end
 end


def destroy
 if @job_category.destroy
 redirect_to admin_job_categories_path , notice: "JobCategory was successfully destroyed."
end
end

private
def job_category_params
  params.require(:job_category).permit(:name, :status)
end

def  set_job_category 
  @job_category = JobCategory.find(params[:id])
  @job_categories = JobCategory.eager_load(:job)
end


end




