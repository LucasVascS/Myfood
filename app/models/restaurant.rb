class Restaurant < ApplicationRecord
  belongs_to :category

  has_many :productcategoties
  has_many :orders

  validates :name, :delivery_tax, :city, :neighborhood, :street, :number, presence: true
end
