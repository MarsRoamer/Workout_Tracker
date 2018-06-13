class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.string :name, :default => nil
      t.string :conditioning_type
      t.string :description
      t.integer :gym_id
      t.timestamps
    end
  end
end
