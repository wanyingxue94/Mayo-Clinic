class AddColumn < ActiveRecord::Migration
  def change 
	add_column :patients, :gender, :boolean
  end
end
