class Koszyk < ApplicationRecord
  has_many :zamowienies
  has_many :produkts
end
