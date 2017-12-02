class RemoveRelationshipFromSpouse < ActiveRecord::Migration
  def change
    remove_column :spouses, :relationship, :string
  end
end
