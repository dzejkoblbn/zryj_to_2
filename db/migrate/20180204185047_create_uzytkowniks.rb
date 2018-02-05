class CreateUzytkowniks < ActiveRecord::Migration[5.1]
  def change
    create_table :uzytkowniks, id: false do |t|
      t.primary_key :index
      t.string :imie
      t.string :nazwisko
      t.string :kod_pocztowy_u
      t.string :ulica_u
      t.string :nr_budynku_u
      t.string :nr_mieszkania_u
      t.references :typ, foreign_key: true
      t.references :zamowienie, foreign_key: true
      t.integer :id_typu
      t.integer :id_restauracji
      t.foreign_key :id_typu, :column => :id_typu, :dependent => :delete
      t.foreign_key :id_restauracji, :column => :id_restauracji, :dependent => :delete


      t.timestamps
    end
  end
end
