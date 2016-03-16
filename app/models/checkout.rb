class Checkout < ActiveRecord::Base
  belongs_to :book
  belongs_to :reader

  validates :book_id, presence: true
  validates :due_date, presence: true
  validates :borrower, presence: true
end
