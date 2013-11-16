class Item < ActiveRecord::Base
  has_many :menus_items
  has_many :menus, through: :menus_items
  validates :title, :cost, presence: true
end
