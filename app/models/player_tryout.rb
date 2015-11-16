class PlayerTryout < ActiveRecord::Base
  belongs_to :player
  belongs_to :tryout
  has_many   :evaluations
end
