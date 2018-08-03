class GymSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :workouts, serializer: WorkoutSerializer
end
