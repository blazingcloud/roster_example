class Person < ActiveRecord::Base
  validates_presence_of :last_name, :first_name
  has_many :pets
  
  def full_name
    "#{first_name} #{last_name}"
  end
end
