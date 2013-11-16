class Item < ActiveRecord::Base
	validates :price, format: { with: /\d*\.?\d{2}?/}
end