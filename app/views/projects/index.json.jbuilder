json.array!(@projects) do |project|
  json.extract! project, :id, :name, :owner, :sponsor, :date_started, :date_completed, :comment
  json.url project_url(project, format: :json)
end
