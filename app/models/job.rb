class Job < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :waga_upper_bound, presence: true
  validates :waga_lower_bound, presence: true
  validates :waga_lower_bound, numericality: { greater_than: 0}
end
