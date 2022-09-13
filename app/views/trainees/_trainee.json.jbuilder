json.extract! trainee, :id, :first_name, :last_name, :email, :phone, :twitter, :created_at, :updated_at
json.url trainee_url(trainee, format: :json)
