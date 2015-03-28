class Idea < ActiveRecord::Base
  searchkick
  belongs_to :user
end
