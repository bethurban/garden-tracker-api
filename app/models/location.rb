class Location < ApplicationRecord
  has_many :plants
  belongs_to :user
end
