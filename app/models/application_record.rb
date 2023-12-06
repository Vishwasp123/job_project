# ActiveStorage::Blob.services = ActiveStorage::Service::Registry.new(configs)

class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

def dummy_image
  fake_logo = Faker::Company.logo
  # dummy_image.logo.attach(io: StringIO.new(fake_logo_data), filename: 'fake_logo.png', content_type: 'image/png')
  # dummy_image.save
end

 # Rails.application.routes.url_helpers.rails_blob_path(job.dummy_image, only_path: true)



end
