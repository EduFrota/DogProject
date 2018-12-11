class AddLenghtToDog < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :length, :float
  end
end
