class Event < ApplicationRecord
  self.primary_key = "event_id"
  has_many :reserve, foreign_key: :event_id, primary_key: :event_id
  belongs_to :reserve_period
end
