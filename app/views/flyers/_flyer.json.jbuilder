json.extract! flyer, :id, :title, :cost, :info, :time, :date_of_event, :user_id, :project_id, :category_id, :created_at, :updated_at
json.url flyer_url(flyer, format: :json)
