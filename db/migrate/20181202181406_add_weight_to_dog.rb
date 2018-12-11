class AddWeightToDog < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :weight, :float
  end
end
