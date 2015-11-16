class Guardian < ActiveRecord::Base
  has_many: guardianships
  belongs_to :user
end
