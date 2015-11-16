class Player < User
  has_many :player_tryouts, dependent: :destroy
  belongs_to :user
end
