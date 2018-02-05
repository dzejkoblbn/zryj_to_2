class AddIndexToUzytkowniksIndex < ActiveRecord::Migration[5.1]
  def change
    add_index :uzytkowniks, :index, unique: true
  end
end
