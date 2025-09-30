class RenameAdminSetupColumns < ActiveRecord::Migration[8.0]
  def change
    rename_column :admin_setups, :setup_key, :site_name
    rename_column :admin_setups, :setup_value, :url
  end
end
