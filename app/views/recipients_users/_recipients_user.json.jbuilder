json.extract! recipients_user, :id, :recipient_id, :user_id, :created_at, :updated_at
json.url recipients_user_url(recipients_user, format: :json)
