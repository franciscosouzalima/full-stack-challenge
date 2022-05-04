class Book < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :author, presence: true
  
  has_many :lends
end
