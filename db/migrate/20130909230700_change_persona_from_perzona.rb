class ChangePersonaFromPerzona < ActiveRecord::Migration
  def change
    rename_table :perzonas, :personas
  end
end