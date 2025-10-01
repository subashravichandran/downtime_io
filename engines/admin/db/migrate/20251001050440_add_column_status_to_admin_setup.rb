class AddColumnStatusToAdminSetup < ActiveRecord::Migration[8.0]
  def change
    add_column :admin_setups, :active, :boolean, default: true
  end
end
