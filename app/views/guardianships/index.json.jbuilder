json.array!(@guardianships) do |guardianship|
  json.extract! guardianship, :id, :guardian_id, :player_id
  json.url guardianship_url(guardianship, format: :json)
end
