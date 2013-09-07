class Perzona < ActiveRecord::Base
  attr_accessible :apellido, :cedula, :direccion, :nombre, :aggregate_date
  validates_numericality_of :cedula 
  validates_presence_of :nombre, :cedula, :apellido, :direccion 
  validates_uniqueness_of :cedula
end 