class Trail < ActiveRecord::Base

  belongs_to :mountain
  has_many :comments

end