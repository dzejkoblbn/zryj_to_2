class CreateZamowienies < ActiveRecord::Migration[5.1]
  def change
    create_table :zamowienies, id: false do |t|
      t.primary_key :id_zamowienia
      t.date :data_zamowienia
      t.float :czas_realizacji
      t.float :koszt
      t.integer :index
      t.foreign_key :index, :column => :index, :dependent => :delete
      t.references :koszyk, foreign_key: true


      t.timestamps
    end
  end
end
