class Menu < ApplicationRecord
  belongs_to :restaurant, optional: true
  has_many :items, dependent: :destroy
end
