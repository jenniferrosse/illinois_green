class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :project_name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :buildings_assignment
      t.string :building_type
      t.string :project_status
      t.string :date
      t.integer :impact

      t.timestamps
    end
  end
end
