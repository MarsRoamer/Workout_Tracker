class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :name, :conditioning_type, :description
 
  # belongs_to :gym
end
