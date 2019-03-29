class AddPedigreeToDog < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :pedigree, :boolean
  end
end
