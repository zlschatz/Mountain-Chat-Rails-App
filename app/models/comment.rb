class Comment < ActiveRecord::Base

  belongs_to :trail
  has_many :votes

  validates_presence_of :content, :trail_id, :user_id

end