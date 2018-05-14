class ReservePeriod < ApplicationRecord
  self.primary_key = "reserve_period_id"
  has_many :events, foreign_key: :reserve_period_id, primary_key: :reserve_period_id
  belongs_to :event_place
end
