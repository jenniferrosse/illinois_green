class CreateProjectPartners < ActiveRecord::Migration[5.1]
  def change
    create_table :project_partners do |t|
      t.string :name

      t.timestamps
    end
  end
end
