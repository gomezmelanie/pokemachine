class CreatePokemons < ActiveRecord::Migration[7.1]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :category
      t.integer :level
      t.string :picture
      t.string :address
      t.float :price
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
