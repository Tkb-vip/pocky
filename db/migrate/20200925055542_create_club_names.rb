class CreateClubNames < ActiveRecord::Migration[5.1]
  def change
    create_table :club_names do |t|
      t.string :name
      t.integer :sort

      t.timestamps
    end
  end
end
