class ProjectPartner < ApplicationRecord
  belongs_to :project
  belongs_to :partner
end
