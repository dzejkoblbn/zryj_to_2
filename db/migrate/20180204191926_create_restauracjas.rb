class CreateRestauracjas < ActiveRecord::Migration[5.1]
  def change
    create_table :restauracjas, id: false do |t|
      t.primary_key :id_restauracji
      t.string :nazwa_restauracji
      t.string :opis_restauracji
      t.string :kod_pocztowy_r
      t.string :ulica_r
      t.string :numer_budynku_r
      t.string :numer_lokalu_r
      t.integer :index
      t.integer :id_obszaru
      t.foreign_key :index, :column => :index, :dependent => :delete
      t.foreign_key :id_obszaru, :column => :id_obszaru, :dependent => :delete


      t.timestamps
    end
  end
end
