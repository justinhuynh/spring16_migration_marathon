class Reader < ActiveRecord::Base
  has_many :checkouts

  validates :full_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :phone_number, presence: true, uniqueness: true
end
