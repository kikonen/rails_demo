class User < ActiveRecord::Base
  attr_accessible :email, :name
  has_many :microposts

  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create }
end
