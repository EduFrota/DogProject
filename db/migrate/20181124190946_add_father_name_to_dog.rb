class AddFatherNameToDog < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :father_name, :string
  end
end
