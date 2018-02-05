class Obszary < ApplicationRecord
  has_and_belongs_to_many :restauracjas, :join_table => :obszaries_restacjas
  has_many :ulices
  validates :kod_pocztowy, presence: true, length: { is: 6 }
end
