class Reader < ActiveRecord::Base
  has_many :checkouts

  validates :first_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :phone_number, presence: true, uniqueness: true
end
