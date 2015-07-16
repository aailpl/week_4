class CreateProducts < ActiveRecord::Migration
  def change
  	create_table :products do |t|
  		t.string :name
  		t.decimal :price, precision: 7, scale: 2
  		t.string :description
  		t.integer :category_id
  	end
  end
end
