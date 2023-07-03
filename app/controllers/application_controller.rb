class ApplicationController < ActionController::Base
  protected
  def after_sign_in_path_for(resource)
    admin_jobs_path
  end
end
