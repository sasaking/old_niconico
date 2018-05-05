class EventPlace < ApplicationRecord
  self.primary_key = "event_place_id"
  has_many :reserve_periods, foreign_key: :event_place_id, primary_key: :event_place_id
end
