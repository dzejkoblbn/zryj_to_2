class CreateTyps < ActiveRecord::Migration[5.1]
  def change
    create_table :typs do |t|
      t.integer :id_typu
      t.string :nazwa_typu

      t.timestamps
    end
  end
end
