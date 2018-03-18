class Project < ApplicationRecord

  belongs_to :project_type, optional: true
  has_many :project_partners
  has_many :partners, :through => :project_partners

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|

      project_hash = row.to_hash 
      project = Project.where(id: project_hash["id"])

      if project.count == 1
        project.first.update_attributes(project_hash)
      else
        Project.create!(project_hash)
      end # end if !project.nil?
    end # end CSV.foreach
  end # end self.import(file)
end