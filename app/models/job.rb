class Job < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :waga_upper_bound, presence: true
  validates :waga_lower_bound, presence: true
  validates :waga_lower_bound, numericality: { greater_than: 0}

  def publish!
    self.is_hidden =false
    self.save
  end

  def hide!
    self.is_hidden = true
    self .save
  end
end
