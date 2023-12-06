namespace :active_record_url do
    desc "Display Active Storage Url "

    task jobs_url: :environment do
      Job.last(5).each do |job|
        puts job.company_image_url
      end
    end
end





