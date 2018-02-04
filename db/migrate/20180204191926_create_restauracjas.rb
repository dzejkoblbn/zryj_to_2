class CreateRestauracjas < ActiveRecord::Migration[5.1]
  def change
    create_table :restauracjas do |t|
      t.integer :id_restauracji
      t.string :nazwa_restauracji
      t.string :opis_restauracji
      t.string :kod_pocztowy_r
      t.string :ulica_r
      t.string :numer_budynku_r
      t.string :numer_lokalu_r

      t.timestamps
    end
  end
end
