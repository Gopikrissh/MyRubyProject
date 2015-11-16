class Guardianship < ActiveRecord::Base
  belongs_to :guardian
  belongs_to :player
end
