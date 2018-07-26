class Stroll < ApplicationRecord
  belongs_to :puppy # a une seule docteur
  belongs_to :dog_sitter
end
