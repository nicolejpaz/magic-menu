class Menu < ActiveRecord::Base
  has_many :menus_items
  has_many :items, through: :menus_items
  validates :title, presence: true
end
