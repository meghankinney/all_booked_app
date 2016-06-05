class CreateMonths < ActiveRecord::Migration
  def change
    create_table :months do |t|
      t.date :started_on
      t.integer :user_id

      t.timestamps

    end
  end
end
