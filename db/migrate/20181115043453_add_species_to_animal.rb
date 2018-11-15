class AddSpeciesToAnimal < ActiveRecord::Migration[5.2]
  def change
    add_column :animals, :species, :string
  end
end
