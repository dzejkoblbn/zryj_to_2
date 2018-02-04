class Zamowienie < ApplicationRecord
  belongs_to :koszyk
  has_many :uzytkowniks
end
