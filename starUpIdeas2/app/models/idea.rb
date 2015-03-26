class Idea < ActiveRecord::Base
	belongs_to :user
	# has_attached_file :image, styles: { medium: "300x300#"}
	# #validates_attachment :image, content_type: { content_type: /\Aimage\/.*\Z/ }
	# validates_attachment_content_type :image, :content_type => ["images/jpg", "image/jpeg", "image/png", "image/gif"]
	# #do_not_validate_attachment_file_type :image
	# #validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
 #  	#validates_attachment_content_type :image, content_type: [image/jpg, /\Aimage\/.*\Z/]
end
