class CreateAnimalPictures < ActiveRecord::Migration[5.0]
  def change
    create_table :animal_pictures do |t|
      t.string :picture
    end
  end
end
