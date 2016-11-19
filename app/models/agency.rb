class Agency < ApplicationRecord
  self.primary_key = "agency_id"
  has_many :routes
end
