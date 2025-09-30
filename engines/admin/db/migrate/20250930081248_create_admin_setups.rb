class CreateAdminSetups < ActiveRecord::Migration[8.0]
  def change
    create_table :admin_setups do |t|
      t.string :setup_key
      t.string :setup_value

      t.timestamps
    end
  end
end
