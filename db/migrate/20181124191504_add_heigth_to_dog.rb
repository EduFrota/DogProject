class AddHeigthToDog < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :heigth, :float
  end
end
