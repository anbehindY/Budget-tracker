class Bill < ApplicationRecord
  belongs_to :author
  has_and_belongs_to_many :categories
  
  validates :name, presence: true
  validates :amount, presence: true, numericality: { only_integer: true }
end
