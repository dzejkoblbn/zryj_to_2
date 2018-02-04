class CreateObszaries < ActiveRecord::Migration[5.1]
  def change
    create_table :obszaries do |t|
      t.string :kod_pocztowy

      t.timestamps
    end
  end
end
