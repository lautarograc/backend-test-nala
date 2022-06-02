class Employee < ApplicationRecord
  validates :full_name, :position, presence: true
  validates :personal_id, :email, presence: true, uniqueness: true
  validates :status, inclusion: { in: %w[probationary regular inactive], message: '%{value} is not a valid status' }
end
