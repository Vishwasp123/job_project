# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


ActiveRecord::Base.transaction do 
  # 1000.times do |i|
  #   job_category = JobCategory.create(
  #     name: Faker::Job.field,

  #     )
  # end


  # 300.times do |i|
  #   user = User.create(
  #     email: Faker::Internet.email(domain: 'example.com'),
  #     password: '123456',
  #     name: "#{Faker::Name.name}_#{i+50}"
  #     )
  # end





  # 1000.times do |i|
  #   jobs = Job.create(
  #     title: Faker::Job.title,
  #     employee_type:Faker::Job.employment_type,
  #     location_type:Faker::Address.country,
  #     salary: Job::SALARIES.sample,
  #     link_to_apply: Faker::Internet.url, 
  #     max_position: Faker::Number.number(digits: 2),  
  #     qualification: Faker::Job.education_level,
  #     status: Job::VALID_STATUSES.sample,
  #     job_category_id: JobCategory.pluck(:id).sample, 
  #     description: Faker::Lorem.paragraph
  #     )
  #  end
end

