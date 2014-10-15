class CreateTacos < ActiveRecord::Migration
  def change
    create_table :tacos do |t|
      t.string :name
      t.text :ingredients
      t.string :photo_url
      t.boolean :delicious

      t.timestamps
    end
  end
end
