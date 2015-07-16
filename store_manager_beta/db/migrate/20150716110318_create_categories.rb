class CreateCategories < ActiveRecord::Migration
  def change
  	create_table :categories do |r|
  		r.string :name
  	end 
  end
end
