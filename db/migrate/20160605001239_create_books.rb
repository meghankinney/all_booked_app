class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.integer :user_id
      t.integer :page_number
      t.text :description
      t.string :author
      t.string :title
      t.string :cover_url

      t.timestamps

    end
  end
end
