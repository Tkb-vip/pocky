class CreateOtoiawases < ActiveRecord::Migration[5.1]
  def change
    create_table :otoiawases do |t|

      t.timestamps
    end
  end
end
