class AddImageToDog < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :image, :string
  end
end
