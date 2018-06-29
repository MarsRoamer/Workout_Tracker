class User < ApplicationRecord

	has_secure_password
	belongs_to :gym
	has_many :user_workouts
	has_many :workouts, through: :user_workouts
  validates :password, presence: true, unless: :omniauth?
  validates :username, uniqueness: true
  validates :username, presence: true
  validates :gym_id, presence: true
  validates :email, presence: true

  def self.from_omniauth(auth)
  	
    where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.username = auth.info.name
      user.password = auth.uid
      if user.gym_id.blank?
       
          user.gym_id = 1000000
      else 
          user.gym_id = user.gym_id
      end
      user.email = auth.info.email
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      
      user.save!
    end
  end

  def omniauth?
    !self.provider.blank?
  end



end
