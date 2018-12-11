class AddPelageColorToDog < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :pelage_color, :string
  end
end
