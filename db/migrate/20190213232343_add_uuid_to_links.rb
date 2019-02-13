class AddUuidToLinks < ActiveRecord::Migration[5.2]
  def change
    enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
    add_column :links, :uuid, :uuid, default: 'gen_random_uuid()' 
  end
end
