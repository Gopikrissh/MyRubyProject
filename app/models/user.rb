class User < ActiveRecord::Base
  has_one :guardian, dependent: :destroy
  belongs_to :profile
end
