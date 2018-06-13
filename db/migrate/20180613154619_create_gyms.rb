class CreateGyms < ActiveRecord::Migration[5.2]
  def change
    create_table :gyms do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :motto
      t.integer :owner_id
      t.timestamps
    end
  end
end
