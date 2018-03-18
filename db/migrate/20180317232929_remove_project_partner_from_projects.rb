class RemoveProjectPartnerFromProjects < ActiveRecord::Migration[5.1]
  def change
    remove_column :projects, :project_partner_id
  end
end
