class Idea < ActiveRecord::Base
	searchkick
	belongs_to :user
	has_attached_file :image, styles: { medium: "300x300#"}
	validates_attachment :image, content_type: { content_type: /\Aimage\/.*\Z/ }
end
