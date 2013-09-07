class CreatePerzonas < ActiveRecord::Migration
  def change
    create_table :perzonas do |t|
      t.string :cedula
      t.string :direccion
      t.string :nombre
      t.string :apellido

      t.timestamps
    end
  end
end
