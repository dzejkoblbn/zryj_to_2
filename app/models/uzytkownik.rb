class Uzytkownik < ApplicationRecord
  belongs_to :typ
  belongs_to :zamowienie
  has_and_belongs_to_many :restauracjas, :join_table => :restauracjas_uzytkowniks

  has_secure_password

  validates :index, presence: true, uniqueness: true, length: { is: 6 }
  validates :imie, presence: true, length: { in: 3..50 }
  validates :nazwisko, presence: true, length: { in: 3..50 }
  validates :kod_pocztowy_u, presence: true, length: { is: 6 }
  validates :ulica_u, presence: true, length: { in: 3..50 }
  validates :nr_budynku_u, presence: true, length: { in: 1..3 }
  validates :nr_mieszkania_u, presence: true, length: { in: 1..3 }
  validates :password, presence: true, length: { minimum: 6 }


end
