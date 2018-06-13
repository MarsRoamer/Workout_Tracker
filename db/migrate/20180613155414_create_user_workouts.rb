class CreateUserWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :user_workouts do |t|
   	  t.belongs_to :user 
   	  t.belongs_to :workout
      t.timestamps
    end
  end
end
