class ChangeArticleTagToBookTag < ActiveRecord::Migration[6.1]
  def change
    rename_table :article_tags, :book_tags
  end
end
