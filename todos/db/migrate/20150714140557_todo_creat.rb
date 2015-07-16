class TodoCreat < ActiveRecord::Migration
  def change
  	create_table :todos do |todo|
  		todo.string :title
  		todo.string :status

  		todo.timestamps 
  	end
  end
end
