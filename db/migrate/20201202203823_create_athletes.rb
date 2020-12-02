class CreateAthletes < ActiveRecord::Migration[6.0]
  def change
    create_table :athletes do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.integer :coach_id

      t.timestamps
    end
  end
end
