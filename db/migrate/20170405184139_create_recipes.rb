class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.text :prime
      t.text :name
      t.text :ingredients
      t.text :directions
      t.text :prep
      t.text :complete
      t.text :secondary
      t.text :user

      t.timestamps
    end
  end
end
