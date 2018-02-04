class Obszary < ApplicationRecord
  has_and_belongs_to_many :restauracjas, :join_table => :obszaries_restacjas
end
