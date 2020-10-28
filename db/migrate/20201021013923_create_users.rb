class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.integer :club_name_id
      t.boolean :teacher
      t.boolean :admin

      t.timestamps
    end
  end
end
