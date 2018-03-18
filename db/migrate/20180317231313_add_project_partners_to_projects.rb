class AddProjectPartnersToProjects < ActiveRecord::Migration[5.1]
  def change
    add_reference :projects, :project_partner, foreign_key: true
  end
end
