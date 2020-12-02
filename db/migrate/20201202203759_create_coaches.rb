class CreateCoaches < ActiveRecord::Migration[6.0]
  def change
    create_table :coaches do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.integer :athlete_id

      t.timestamps
    end
  end
end
