class Address < ActiveRecord::Base
  validates_numericality_of :house_number
  validates_presence_of :street, :city
  validates_length_of :state, :is => 2
end
