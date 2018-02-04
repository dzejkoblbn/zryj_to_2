class CreateProdukts < ActiveRecord::Migration[5.1]
  def change
    create_table :produkts do |t|
      t.integer :id_produktu
      t.string :nazwa_produktu
      t.string :opis_produktu
      t.float :czas_przygotowania
      t.float :cena
      t.references :restauracja, foreign_key: true
      t.references :koszyk, foreign_key: true

      t.timestamps
    end
  end
end
