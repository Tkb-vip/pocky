class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :name
      t.string :place_image
      t.text :memo
      t.integer :sort

      t.timestamps
    end
  end
end
