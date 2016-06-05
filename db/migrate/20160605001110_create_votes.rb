class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :nomination_id
      t.string :user_id

      t.timestamps

    end
  end
end
