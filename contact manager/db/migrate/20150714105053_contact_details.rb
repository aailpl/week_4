class ContactDetails < ActiveRecord::Migration
  def change
  	add_column :contacts,:adress, :string
  	add_column :contacts, :last_name, :string
  	add_column :contacts, :email, :string
  end
end
