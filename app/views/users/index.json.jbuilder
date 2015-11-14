json.array!(@users) do |user|
  json.extract! user, :id, :player_id, :coach_id, :guardian_id, :first_name, :last_name, :username, :email, :phone, :gender, :dob, :address1, :address2, :city, :state, :zip, :email, :phone, :experience
  json.url user_url(user, format: :json)
end
