class Koszyk < ApplicationRecord
  has_many :produkts
  has_many :zamowienies
end
