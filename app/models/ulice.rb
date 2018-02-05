class Ulice < ApplicationRecord
  belongs_to :obszary
  validates :id_ulicy, presence: true, uniqueness: true, length: { is: 7 }
  validates :nazwa_ulicy, presence: true, uniqueness: true, length: { in: 3..50 }
end
