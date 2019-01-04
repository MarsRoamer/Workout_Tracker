class AddGymToCommentTable < ActiveRecord::Migration[5.2]
  def change
  	add_column :comments, :workout_id, :integer
  end
end
