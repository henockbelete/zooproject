class CreateAnimals < ActiveRecord::Migration[5.1]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :food
      t.string :image_url

      t.timestamps
    end
  end
end
