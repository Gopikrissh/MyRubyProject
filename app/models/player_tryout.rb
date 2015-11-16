class PlayerTryout < ActiveRecord::Base
  belongs_to :player
  belongs_to :tryout
end
