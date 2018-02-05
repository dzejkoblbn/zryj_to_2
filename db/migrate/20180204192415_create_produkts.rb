class CreateProdukts < ActiveRecord::Migration[5.1]
  def change
    create_table :produkts, id: false do |t|
      t.primary_key :id_produktu
      t.string :nazwa_produktu
      t.string :opis_produktu
      t.float :czas_przygotowania
      t.float :cena
      t.references :restauracja, foreign_key: true
      t.references :koszyk, foreign_key: true
      t.integer :id_restauracji
      t.foreign_key :id_restauracji, :column => :id_restauracji, :dependent => :delete


      t.timestamps
    end
  end
end
