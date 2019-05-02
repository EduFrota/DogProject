class ChangeLengthToBeStringInDogs < ActiveRecord::Migration[5.2]
  def change
    change_column :dogs, :length, :string
  end
end
