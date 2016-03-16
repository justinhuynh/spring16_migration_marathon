class Categorization < ActiveRecord::Base
  belongs_to :category
  belongs_to :book

  validates :category_id, presence: true, numericality: { only_integer: true }
  validates :book_id, presence: true, numericality: { only_integer: true }
end
