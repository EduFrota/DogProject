class AddVacineToDog < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :vacine, :boolean
  end
end
