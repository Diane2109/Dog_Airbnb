class DogSitter < ApplicationRecord
  has_many :stroll # a plusieurs rdv
  has_many :puppies, through: :stroll
  belongs_to :city
end
