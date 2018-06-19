class Owner < ApplicationRecord
	has_many :gyms
	has_secure_password
	

	validates :username, :name, :password, :email, presence: true
	validates :username, uniqueness: true



end