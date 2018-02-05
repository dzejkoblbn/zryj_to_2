class CreateUlices < ActiveRecord::Migration[5.1]
  def change
    create_table :ulices, id: false do |t|
      t.primary_key :id_ulicy
      t.string :nazwa_ulicy
      t.references :obszary, foreign_key: true
      t.integer :id_obszaru
      t.foreign_key :id_obszaru, :column => :id_obszaru, :dependent => :delete

      t.timestamps
    end
  end
end
