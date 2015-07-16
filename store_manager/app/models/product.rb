class Product < ActiveRecord::Base
	belongs_to :category

	def to_s
		self.name
	end
end