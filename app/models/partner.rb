class Partner < ApplicationRecord
  has_many :project_partners
  has_many :projects, :through => :project_partners
end
