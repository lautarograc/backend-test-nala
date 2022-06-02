class Employee < ApplicationRecord
  validates :full_name, :position, presence: true
  validates :personal_id, :email, presence: true, uniqueness: true
end
