class CreateApiBaseServerLives < ActiveRecord::Migration[8.0]
  def change
    create_table :api_base_server_lives do |t|
      t.references :admin_setup, null: false, foreign_key: true
      t.string :status
      t.string :url
      t.datetime :incident_time

      t.timestamps
    end
  end
end
