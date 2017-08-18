class CreateWouldYouRathers < ActiveRecord::Migration[5.0]
  def change
    create_table :would_you_rathers do |t|
      t.string :question

      t.timestamps
    end
  end
end
