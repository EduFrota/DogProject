class AddRegisterToDog < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :register, :string
  end
end
