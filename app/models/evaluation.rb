class Evaluation < ActiveRecord::Base
  belongs_to :coach
  belongs_to :player_tryout
end
