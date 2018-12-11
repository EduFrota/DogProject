class AddPedigreeToDog < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :pedigree, :string
  end
end
