class CreateKoszyks < ActiveRecord::Migration[5.1]
  def change
    create_table :koszyks do |t|
      t.integer :liczba_sztuk

      t.timestamps
    end
  end
end
