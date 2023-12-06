  class JobCategory < ApplicationRecord
   # validates :name , presence:true 
   has_many :jobs ,dependent: :destroy

  # JOBCATEGORIES = [JobCategory.pluck(:id)].freeze

   

   def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "name", "updated_at"]
  end
end
