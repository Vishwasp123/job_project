class Plan < ApplicationRecord
belongs_to :user, optional: true

	has_many :user_plans
	has_many :users, through: :user_plans
	
	def set_end_date
		end_date = if name == 'Basic'
			30.days
		elsif name == 'Super'
			90.days
		elsif name == 'Abvance'
			183.days
		elsif name == 'Abvance + '
			365.days
		end
		end_date
	end

	

	def self.user_plans
		left_joins(:user_plans).group(:id).order('user_plans.updated_at DESC')
	end

end
