class RemoveNameFromPartners < ActiveRecord::Migration[5.1]
  def change
    remove_column :partners, :name
  end
end
