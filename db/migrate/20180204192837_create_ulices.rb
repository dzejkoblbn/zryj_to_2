class CreateUlices < ActiveRecord::Migration[5.1]
  def change
    create_table :ulices do |t|
      t.integer :id_ulicy
      t.string :nazwa_ulicy
      t.references :obszary, foreign_key: true

      t.timestamps
    end
  end
end
