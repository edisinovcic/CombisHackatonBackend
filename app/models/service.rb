class Service < ApplicationRecord
  belongs_to :user
  has_many :reserve
  has_many :reviews
end
