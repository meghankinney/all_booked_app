class CreateNominations < ActiveRecord::Migration
  def change
    create_table :nominations do |t|
      t.integer :book_id
      t.integer :month_id

      t.timestamps

    end
  end
end
