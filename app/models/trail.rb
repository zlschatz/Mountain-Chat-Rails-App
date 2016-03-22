class Trail < ActiveRecord::Base

  belongs_to :mountain
  has_many :comments

  validates_presence_of :name, :mountain_id

end