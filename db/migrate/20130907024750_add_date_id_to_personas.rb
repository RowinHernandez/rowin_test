class AddDateIdToPerzonas < ActiveRecord::Migration
  def change
  	add_column :perzonas, :aggregate_date, :date_time
  end
end
