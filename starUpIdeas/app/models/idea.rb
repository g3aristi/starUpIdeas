class Idea < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	validates :title, presence: true,
                    length: { minimum: 5 } # ideas title atleast 5 chas.
end
