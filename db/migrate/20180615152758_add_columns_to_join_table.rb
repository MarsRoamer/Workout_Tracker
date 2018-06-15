class AddColumnsToJoinTable < ActiveRecord::Migration[5.2]
  def change
  	add_column :user_workouts, :time, :string, :default => "N/A"
  	add_column :user_workouts, :score, :string, :default => "N/A"
  end
end
