class AddBookIdToMonth < ActiveRecord::Migration
  def change
    add_column :months, :book_id, :integer
  end
end
