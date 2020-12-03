class DropSessions < ActiveRecord::Migration[6.0]
  def up
    drop_table :sessions
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
