json.extract! history, :id, :date, :user_id, :change, :before, :after, :recipient_id, :created_at, :updated_at
json.url history_url(history, format: :json)
