class Employee < ApplicationRecord
  validates :full_name, :email, :position, presence: true
  validates :personal_id, presence: true, uniqueness: true
end
