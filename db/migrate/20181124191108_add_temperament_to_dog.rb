class AddTemperamentToDog < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :temperament, :string
  end
end
