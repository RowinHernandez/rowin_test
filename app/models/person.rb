class Person < ActiveRecord::Base
  attr_accessible :surname, :dni, :addres, :name, :date_of_birth
  validates_numericality_of :dni 
  validates_presence_of :name, :dni, :surname, :addres 
  validates_uniqueness_of :dni
  validates_length_of :dni, :minimum => 6, :maximum => 8, :allow_blank => true
  validates :name, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
end 