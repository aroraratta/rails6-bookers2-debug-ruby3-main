class AddBookIdToBookTags < ActiveRecord::Migration[6.1]
  def change
    add_column :book_tags, :book_id, :integer, null: false
  end
end
