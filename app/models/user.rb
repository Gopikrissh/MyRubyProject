class User < ActiveRecord::Base
  has_one :player, dependent: :destroy
  has_one :coach, dependent: :destroy
  has_one :guardian, dependent: :destroy
end
