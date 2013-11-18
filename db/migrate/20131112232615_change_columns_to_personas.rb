class ChangeColumnsToPersonas < ActiveRecord::Migration
  def change
     rename_column :personas, :nombre, :name
     rename_column :personas, :direccion, :addres
     rename_column :personas, :cedula, :dni
     rename_column :personas, :apellido, :surname
     rename_column :personas, :aggregate_date, :date_of_birth
  end
end
