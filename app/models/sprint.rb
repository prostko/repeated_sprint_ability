class Sprint < ApplicationRecord
  has_many :tickets
  has_many :tags, through: :tickets
end
