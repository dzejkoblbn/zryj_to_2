class CreateRestauracjasUzytkowniks < ActiveRecord::Migration[5.1]
  def change
    create_table :restauracjas_uzytkowniks, id: false do |t|
      t.belongs_to :restauracja, index: true
      t.belongs_to :uzytkownik, index: true

    end
  end
end
