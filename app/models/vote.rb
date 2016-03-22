class Vote < ActiveRecord::Base

  belongs_to :user
  belongs_to :comment

  validates_presence_of :value, :user_id, :comment_id

end