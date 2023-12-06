class Admin::JobsController < ApplicationController

  before_action :set_job , only: %i[show edit update destroy]

  def index
    @q = Job.ransack(params[:q])
    @jobs = @q.result(distinct: true).eager_load(:job_category).page params[:page]

  end

  def new

    @job_categories = JobCategory.find_each
    @job = Job.new

  end

  def create

    @job_categories = JobCategory.find_each
    @job = Job.new(job_params)
    if @job.save
      CrudNotificationMailer.create_notification(@job).deliver_now
      redirect_to admin_jobs_path
    else
      render :new
    end
  end

  def update
    if @job.update(job_params)
       # mailer action mailer controller_name.mailer_action_name(instance_name)
       CrudNotificationMailer.update_notification(@job).deliver_now
       redirect_to admin_jobs_path

     else
      render :edit
    end
  end

  def edit
  end

  def show
  end

  def ransack_in_header
    @q = true
  end

  def my_jobs
    @job_categories = JobCategory.find_each
    @jobs = Job.includes(:job_category).references(:job_category).where(job_post_id: current_user.id).page params[:page]
    
  end

  

  def destroy
   @job = Job.find(params[:id])
   if @job.destroy
     # mailer action mailer controller_name.mailer_action_name(instance_name)
     CrudNotificationMailer.delete_notification(@job).deliver_now
     redirect_to admin_jobs_path
   end
 end

 private

 def job_params
  params.require(:job).permit(:title, :job_post_id, :job_category_id,:employee_type,:location_type, :salary, :link_to_apply, :description, :max_position, :qualification, :company_image, :status)
end

def set_job
  @job_categories = JobCategory.find_each
  @job = Job.find(params[:id])
 
end

end
