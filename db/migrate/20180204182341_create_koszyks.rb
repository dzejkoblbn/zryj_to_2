class CreateKoszyks < ActiveRecord::Migration[5.1]
  def change
    create_table :koszyks do |t|
      t.integer :liczba_sztuk
      t.integer :id_produktu
      t.integer :id_zamowienia
      t.foreign_key :id_produktu, :column => :id_produktu, :dependent => :delete
      t.foreign_key :id_zamowienia, :column => :id_zamowienia, :dependent => :delete

      t.timestamps
    end
  end
end
