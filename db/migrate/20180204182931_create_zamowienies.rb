class CreateZamowienies < ActiveRecord::Migration[5.1]
  def change
    create_table :zamowienies do |t|
      t.integer :id_zamowienia
      t.date :data_zamowienia
      t.float :czas_realizacji
      t.float :koszt
      t.references :koszyk, foreign_key: true

      t.timestamps
    end
  end
end
