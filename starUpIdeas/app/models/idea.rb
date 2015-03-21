class Idea < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	belongs_to :user
	default_scope -> { order(created_at: :desc) }
	validates :title, :description, :user_id, presence: true,
                    length: { minimum: 5 } # ideas title atleast 5 chas.
end
