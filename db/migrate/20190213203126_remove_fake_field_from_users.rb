class RemoveFakeFieldFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :fake_field
  end
end
