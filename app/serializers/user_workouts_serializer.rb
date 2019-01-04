class UserWorkoutsSerializer < ActiveModel::Serializer
  attributes :time, :score
  belongs_to :workouts

end
