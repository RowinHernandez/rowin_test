class RenameTableAmigosToFriends < ActiveRecord::Migration
  def change
    rename_table :amigos, :friends
  end
end
