class Uzytkownik < ApplicationRecord
  belongs_to :typ
  belongs_to :zamowienie
  has_and_belongs_to_many :restauracjas, :join_table => :restauracjas_uzytkowniks
end
