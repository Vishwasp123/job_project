  class JobCategory < ApplicationRecord
   # validates :name , presence:true 
   has_many :jobs
    
   JobCategory = ['Medical Profession','Engineering','Teaching Jobs','Chartered Accountant','Management Professional','Design','Programming','Management and Finance','All Other' ].freeze

   def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "name", "updated_at"]
  end
end
