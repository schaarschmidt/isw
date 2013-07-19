class User < ActiveRecord::Base

  validates :startnumber, presence: true, numericality: true 
  validates :year_of_birth, presence: true, numericality: true 

  has_one :result
end
