class Mountain < ActiveRecord::Base

  has_many :trails

  validates_presence_of :name, :city, :state

end