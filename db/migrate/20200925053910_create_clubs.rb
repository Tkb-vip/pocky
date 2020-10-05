class CreateClubs < ActiveRecord::Migration[5.1]
  def change
    create_table :clubs do |t|
      t.text :activities
      t.boolean :tcheck
      t.boolean :scheck
      t.datetime :tcheck_updated_at
      t.datetime :scheck_updated_at
      t.integer :place_id
      t.integer :club_name_id

      t.timestamps
    end
  end
end
