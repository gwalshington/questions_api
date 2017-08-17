class CreateAnimals < ActiveRecord::Migration[5.0]
  def change
    create_table :animals do |t|
      t.string :picture
      t.string :url

      t.timestamps
    end
  end
end
