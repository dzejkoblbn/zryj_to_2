class Produkt < ApplicationRecord
  belongs_to :restauracja
  belongs_to :koszyk
end
