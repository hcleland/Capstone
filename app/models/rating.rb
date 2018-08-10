class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :stadium
end
