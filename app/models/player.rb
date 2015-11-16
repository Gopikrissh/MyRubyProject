class Player < User
  has_many :player_tryouts, dependent: :destroy
  has_many :guardianships
  belongs_to :user
end
