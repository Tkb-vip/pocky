class CreateSelectPlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :select_places do |t|
      t.integer :club_id
      t.integer :place_id

      t.timestamps
    end
  end
end
