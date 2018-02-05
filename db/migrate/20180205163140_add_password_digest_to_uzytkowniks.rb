class AddPasswordDigestToUzytkowniks < ActiveRecord::Migration[5.1]
  def change
    add_column :uzytkowniks, :password_digest, :string
  end
end
