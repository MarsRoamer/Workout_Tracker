class AddColumsToUser < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :provider, :string, :default => nil
  	add_column :users, :uid, :string, :default => nil
  	add_column :users, :oauth_token, :string, :default => nil
  	add_column :users, :oauth_expires_at, :datetime, :default => nil
  end
end
