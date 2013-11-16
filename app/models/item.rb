class Item < ActiveRecord::Base
	validates :price, format: { with: /\d*\.\d\d/}
end