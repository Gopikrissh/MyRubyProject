class Player < User
  has_many :player_tryouts
  belongs_to :user
end
