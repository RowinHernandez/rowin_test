class CreateAmigos < ActiveRecord::Migration
  def change
    create_table :amigos do |t|
      t.string :nombre
      t.string :apellido

      t.timestamps
    end
  end
end
