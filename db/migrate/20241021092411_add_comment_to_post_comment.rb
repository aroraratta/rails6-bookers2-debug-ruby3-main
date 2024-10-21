class AddCommentToPostComment < ActiveRecord::Migration[6.1]
  def change
    add_column :post_comments, :comment, :text
    add_column :post_comments, :user_id, :integer
    add_column :post_comments, :book_id, :integer
  end
end
