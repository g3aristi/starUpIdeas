class Idea < ActiveRecord::Base
  acts_as_votable
  searchkick autocomplete: ['title']
  belongs_to :user
end
