class AddColumnClubActivitiesDate < ActiveRecord::Migration[5.1]
  def change
    add_column :clubs, :activitiesdate,:date
  end
end
