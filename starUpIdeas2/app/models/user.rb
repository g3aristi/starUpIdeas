class User < ActiveRecord::Base
  has_many :ideas
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :ideas
end
