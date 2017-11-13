class Profile < ApplicationRecord
  geocoded_by :address       # can also be an IP address
  after_validation :geocode

  belongs_to :user
end
