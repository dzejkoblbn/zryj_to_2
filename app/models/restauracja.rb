class Restauracja < ApplicationRecord
  has_and_belongs_to_many :obszaries, :join_table => :obszaries_restacjas
  has_and_belongs_to_many :uzytkowniks, :join_table => :restauracjas_uzytkowniks
  has_many :produkts
  validates :id_restauracji, presence: true, uniqueness: true, length: { is: 5 }
  validates :nazwa_restauracji, presence: true, length: { in: 3..50 }
  validates :opis_restauracji, presence: true, length: { in: 3..1000 }
  validates :kod_pocztowy_r, presence: true, length: { is: 6 }
  validates :ulica_r, presence: true, length: { in: 3..50 }
  validates :nr_budynku_r, presence: true, length: { in: 1..3 }
  validates :nr_lokalu_r, length: { in: 1..3 }
end
