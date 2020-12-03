class RemoveSessionIdFromWorkouts < ActiveRecord::Migration[6.0]
  def change
    remove_column :workouts, :session_id, :integer
  end
end
