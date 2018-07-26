class Puppy < ApplicationRecord
  has_many :stroll # a plusieurs rdv
  has_many :dog_sitters, through: :stroll
end
