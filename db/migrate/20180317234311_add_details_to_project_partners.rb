class AddDetailsToProjectPartners < ActiveRecord::Migration[5.1]
  def change
    add_reference :project_partners, :project, foreign_key: true
    add_reference :project_partners, :partner, foreign_key: true
  end
end
