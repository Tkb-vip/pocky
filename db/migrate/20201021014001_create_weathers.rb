class CreateWeathers < ActiveRecord::Migration[5.1]
  def change
    create_table :weathers do |t|
      t.float :temp_max
      t.float :temp_min
      t.float :temp_feel
      t.integer :weather_id
      t.float :rainfall
      t.datetime :date
      t.datetime :aquired_at

      t.timestamps
    end
  end
end
