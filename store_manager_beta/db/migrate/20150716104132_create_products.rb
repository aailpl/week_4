class CreateProducts < ActiveRecord::Migration
  def change
  	create_table :products do |r|
  		r.string :name
  		r.decimal :price, {precision: 7, scale: 2}
  		r.string :description
  		r.integer :category_id
  	end
  end
end 
