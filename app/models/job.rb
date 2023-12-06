require 'faker'
class Job < ApplicationRecord 
  SALARIES = ['10000 to 15000', '15000 to 20000','20000 to 30000', '15000 to 20000'].freeze

  belongs_to :job_category ,dependent: :destroy
  has_one_attached :company_image ,dependent: :destroy

  # has_one_attached :dummy_image_blob ,through: :company_image 
  paginates_per 50

  # rails_blob_path(@job.dummy_image, disposition: "attachment")
   # Rails.application.routes.url_helpers.rails_blob_path(dummy_image, only_path: true)

  def company_image_url
   Rails.application.routes.url_helpers.rails_blob_url(
     company_image.blob, 
     Rails.application.config.action_mailer.default_url_options
     )
 end

 # def dummy_image_url
 #   Rails.application.routes.url_helpers.rails_blob_url(
 #     dummy_image.blob, 
 #     Rails.application.config.action_mailer.default_url_options
 #     )
 # end

 


 


 def self.ransackable_attributes(auth_object = nil)
  ["created_at", "description", "employee_type", "id", "job_categories_id", "link_to_apply", "location_type", "max_position", "qualification", "salary", "title", "updated_at"]
end

def self.ransackable_associations(auth_object = nil)
  ["job_category"]
end

    #using concern archived

    VALID_STATUSES = ['public' ,'archived']

    #validates :status , inclusion: {in: VALID_STATUSES }

    def archived?
      status == 'archived'
    end

    #validates :title, :job_post_id,:job_category_id ,:employee_type , :location_type, :salary ,:link_to_apply ,:description ,:max_position ,:qualification , presence: true
    #validates :link_to_apply, presence:true
    #validates_format_of :link_to_apply, :with =>  /\A(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?/ix ,message: "please enter https://www.xyz.com in correct format"


# job = Job.find(params[:id])
# company_image_url = job.company_image.service_url






end
