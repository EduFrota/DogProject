class AddMotherNameToDog < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :mother_name, :string
  end
end
