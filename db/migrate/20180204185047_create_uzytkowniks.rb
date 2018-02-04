class CreateUzytkowniks < ActiveRecord::Migration[5.1]
  def change
    create_table :uzytkowniks do |t|
      t.integer :index
      t.string :imie
      t.string :nazwisko
      t.string :kod_pocztowy_u
      t.string :ulica_u
      t.string :nr_budynku_u
      t.string :nr_mieszkania_u
      t.references :typ, foreign_key: true
      t.references :zamowienie, foreign_key: true

      t.timestamps
    end
  end
end
