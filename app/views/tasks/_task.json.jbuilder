json.extract! task, :id, :description, :findings, :risks, :recommendations, :created_at, :updated_at
json.url task_url(task, format: :json)
