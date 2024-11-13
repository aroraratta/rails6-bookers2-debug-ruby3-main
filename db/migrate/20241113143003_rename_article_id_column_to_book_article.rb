class RenameArticleIdColumnToBookArticle < ActiveRecord::Migration[6.1]
  def change
    rename_column :book_tags, :article_id, :book_id
  end
end