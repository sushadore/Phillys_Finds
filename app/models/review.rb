class Review < ActiveRecord::Base
  belongs_to :product
  validates :author, presence: true
  validates :content, presence: true
  validates :rating, presence: true, numericality: true, inclusion: { in: 1..5, message: "Rating must be between 1 and 5" }
end
