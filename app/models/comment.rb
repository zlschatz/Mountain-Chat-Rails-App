class Comment < ActiveRecord::Base

  belongs_to :trail
  has_many :votes

end