class RemoveUsernameFromCoaches < ActiveRecord::Migration[6.0]
  def change
    remove_column :coaches, :username, :string
  end
end
