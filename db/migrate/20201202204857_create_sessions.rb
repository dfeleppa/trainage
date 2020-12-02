class CreateSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :sessions do |t|
      t.datetime :date
      t.boolean :complete
      t.integer :athlete_id

      t.timestamps
    end
  end
end
