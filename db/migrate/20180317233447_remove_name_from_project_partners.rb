class RemoveNameFromProjectPartners < ActiveRecord::Migration[5.1]
  def change
    remove_column :project_partners, :name
  end
end
