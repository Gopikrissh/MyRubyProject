json.array!(@evaluations) do |evaluation|
  json.extract! evaluation, :id, :coach_id, :player_tryout_id, :rating, :speed, :shooting, :passing, :comment
  json.url evaluation_url(evaluation, format: :json)
end
