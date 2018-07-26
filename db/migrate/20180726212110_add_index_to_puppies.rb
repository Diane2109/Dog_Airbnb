class AddIndexToPuppies < ActiveRecord::Migration[5.2]
  def change
    add_reference :puppies, :city, foreign_key: true
    add_reference :dog_sitters, :city, foreign_key: true
  end
end
