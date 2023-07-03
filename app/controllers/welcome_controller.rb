class WelcomeController < ApplicationController
  def index
   @job_categories = JobCategory.all
       helpers.time_to_s(:humanized_ago)
   @latest_jobs = Job.order("created_at DESC").limit(10).only(:order)

 end
end
