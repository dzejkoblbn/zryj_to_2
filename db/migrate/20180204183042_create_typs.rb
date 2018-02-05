class CreateTyps < ActiveRecord::Migration[5.1]
  def change
    create_table :typs, id: false do |t|
      t.primary_key :id_typu
      t.string :nazwa_typu

      t.timestamps
    end
  end
end
