class AddNameToTags < ActiveRecord::Migration[6.1]
  def change
    add_column :tags, :name, :string, null:false
  end
end
