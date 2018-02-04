class Restauracja < ApplicationRecord
  has_and_belongs_to_many :obszaries, :join_table => :obszaries_restacjas
  has_and_belongs_to_many :uzytkowniks, :join_table => :restauracjas_uzytkowniks
  has_many :produkts
end
