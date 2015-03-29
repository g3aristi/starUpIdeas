class Idea < ActiveRecord::Base
  acts_as_votable
  searchkick
  belongs_to :user
end
