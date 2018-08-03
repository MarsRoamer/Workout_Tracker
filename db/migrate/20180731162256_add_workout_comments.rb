class AddWorkoutComments < ActiveRecord::Migration[5.2]
  def change
  	create_table :comments do |t| 
  		t.string :comment
  	end
  end
end
