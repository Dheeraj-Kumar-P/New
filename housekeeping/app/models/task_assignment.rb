# TA
class TaskAssignment < ApplicationRecord
  belongs_to :tasks
  belongs_to :users
  belongs_to :room
end
