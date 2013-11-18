class ChangeColumnsToFriends < ActiveRecord::Migration
  def change
     rename_column :friends, :nombre, :name
     rename_column :friends, :apellido, :surname
     add_column :friends, :person_id, :integer
  end
end
