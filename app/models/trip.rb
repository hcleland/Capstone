class Trip < ApplicationRecord
  belongs_to :stadium
  belongs_to :schedule
end
