class Job < ApplicationRecord 

    SALARIES = ['10000 to 15000', '15000 to 20000','20000 to 30000', '15000 to 20000'].freeze
    


    belongs_to :job_category
    has_one_attached :company_image
    paginates_per 6

    #using concern archived

    VALID_STATUSES = ['public' ,'archived']

    #validates :status , inclusion: {in: VALID_STATUSES }

    def archived?
      status == 'archived'
    end

    #validates :title, :job_post_id,:job_category_id ,:employee_type , :location_type, :salary ,:link_to_apply ,:description ,:max_position ,:qualification , presence: true
    validates :link_to_apply, presence:true
    


    validates_format_of :link_to_apply, :with =>  /\A(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?/ix ,message: "please enter https://www.xyz.com in correct format"

   




   def self.ransackable_attributes(auth_object = nil)
    ["created_at", "description", "employee_type", "id", "job_categories_id", "link_to_apply", "location_type", "max_position", "qualification", "salary", "title", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["job_category"]
  end


  end
