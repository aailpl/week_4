class CreatContacts < ActiveRecord::Migration
  def change
  	create_table :contacts do |table|
      table.string :name
      table.string :phone
    end
  end
end
