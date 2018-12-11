class AddPelageToDog < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :pelage, :string
  end
end
