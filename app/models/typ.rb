class Typ < ApplicationRecord
  has_many :uzytkowniks
  validates :id_typu, presence: true, uniqueness: true, length: { is: 4 }
  validates :nazwa_typu, presence: true, uniqueness: true, length: { in: 3..50 }
end
