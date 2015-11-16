class User < ActiveRecord::Base
  has_one :guardian, dependent: :destroy
end
