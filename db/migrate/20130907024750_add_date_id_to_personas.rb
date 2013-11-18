class AddDateIdToPersonas < ActiveRecord::Migration
  def change
  	add_column :perzonas, :aggregate_date, :datetime
  end
end
