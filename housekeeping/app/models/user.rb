# User Model
class User < ApplicationRecord
  belongs_to :hotel
  belongs_to :role
  belongs_to :shift
  has_one :salary
  has_many :task_assignments
end
