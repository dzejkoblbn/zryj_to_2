class CreateObszaries < ActiveRecord::Migration[5.1]
  def change
    create_table :obszaries, id: false do |t|
      t.primary_key :id_obszaru
      t.string :kod_pocztowy
      t.integer :id_restauracji
      t.foreign_key :id_restauracji, :column => :id_restauracji, :dependent => :delete
      t.integer :id_ulicy
      t.foreign_key :id_ulicy, :column => :id_ulicy, :dependent => :delete

      t.timestamps
    end
  end
end
