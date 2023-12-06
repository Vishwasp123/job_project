class WelcomeController < ApplicationController

  WELCOME_PAGE = 10
  def index
  
   @job_categories = JobCategory.all
   @latest_jobs = Job.includes(:job_category).order("created_at DESC").limit(WELCOME_PAGE).only(:order).page params[:page]
   
 end
end
