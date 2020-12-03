class RemoveUsernameFromAthletes < ActiveRecord::Migration[6.0]
  def change
    remove_column :athletes, :username, :string
  end
end
