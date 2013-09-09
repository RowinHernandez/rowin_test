class ChangePersonaFromPerzona < ActiveRecord::Migration
  def change
    change_table :perzona, :persona
  end
end