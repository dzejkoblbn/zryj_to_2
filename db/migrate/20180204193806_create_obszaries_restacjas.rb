class CreateObszariesRestacjas < ActiveRecord::Migration[5.1]
  def change
    create_table :obszaries_restacjas, id: false do |t|
      t.belongs_to :obszar, index: true
      t.belongs_to :restauracja, index: true
    end
  end
end
