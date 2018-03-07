json.extract! project, :id, :project_name, :address, :latitude, :longitude, :buildings_assignment, :building_type, :project_status, :date, :impact, :created_at, :updated_at
json.url project_url(project, format: :json)
