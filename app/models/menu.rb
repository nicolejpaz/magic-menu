class Menu < ActiveRecord::Base
  has_many :items

  validates :name, presence: true
  
  # Remember to create a migration!
end
