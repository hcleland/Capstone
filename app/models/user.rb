class User < ApplicationRecord
  has_secure_password
  has_many :stadiums
  has_many :ratings
end
