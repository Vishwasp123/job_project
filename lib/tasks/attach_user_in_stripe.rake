namespace :attach_user_in_stripe do 
	desc "Attach Strip Id In User"
	task add_strip_id_in_user: :environment do
		stripe_service = StripeService.new
		User.find_each do |user|
			puts "finding or update Stripe Customer  #{user.id}"
			stripe_service.create_stripe_customer_card(stripe_customer)
		end
	end
end