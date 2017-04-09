class Service < ApplicationRecord
  belongs_to :user
  has_many :reserves
  has_many :reviews
end
