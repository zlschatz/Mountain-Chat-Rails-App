class User < ActiveRecord::Base

  has_secure_password

  has_many :comments
  has_many :votes

  validates :name, presence: true, length: {in: 8..20}
  validates :email, presence: true


end