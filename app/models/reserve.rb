class Reserve < ApplicationRecord
  self.primary_key = "reserve_id"
  belongs_to :event
end
