class ChangeRelationshippsToRelationships < ActiveRecord::Migration[6.1]
  def change
    rename_table :relationshipps, :relationships
  end
end
