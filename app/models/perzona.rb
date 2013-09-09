class Perzona < ActiveRecord::Base
  attr_accessible :apellido, :cedula, :direccion, :nombre, :aggregate_date
  validates_numericality_of :cedula 
  validates_presence_of :nombre, :cedula, :apellido, :direccion 
  validates_uniqueness_of :cedula
  validates_length_of :cedula, :minimum => 6, :maximum => 8, :allow_blank => true
  validates :nombre, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
end 