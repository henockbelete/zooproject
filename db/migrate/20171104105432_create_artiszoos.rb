class CreateArtiszoos < ActiveRecord::Migration[5.1]
  def change
    create_table :artiszoos do |t|
      t.string :department

      t.timestamps
    end
  end
end
