# Room
class Room < ApplicationRecord
  belongs_to :hotel, foreign_key: 'hotel_id'
  has_one :task_assignment
end
