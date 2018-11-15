class CreateToys < ActiveRecord::Migration[5.2]
  def change
    create_table :toys do |t|
      t.string :name
      t.text :description
      t.integer :amount
      t.belongs_to :animal, foreign_key: true

      t.timestamps
    end
  end
end
