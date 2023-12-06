module ApplicationHelper
	
	def active_storage_image_url(record, attachment_name)
		attachment = record.send(attachment_name)
		attachment.service_url if attachment.present?
	end

	


end
