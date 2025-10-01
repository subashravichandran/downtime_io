# This migration comes from admin (originally 20251001050440)
class AddColumnStatusToAdminSetup < ActiveRecord::Migration[8.0]
  def change
    add_column :admin_setups, :active, :boolean, default: true
  end
end
