class AddFakeFieldToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :fake_field, :string, null: false, default: "fake"
  end
end
