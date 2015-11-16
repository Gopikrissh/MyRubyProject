class Coach < User
  has_many :evaluations
  belongs_to :user
end
