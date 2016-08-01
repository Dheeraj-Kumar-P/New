# Room
class Room < ApplicationRecord
  belongs_to :hotels
  has_one :task_assignment
end
