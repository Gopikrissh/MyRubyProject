json.array!(@player_tryouts) do |player_tryout|
  json.extract! player_tryout, :id, :player_id, :tryout_id, :payment
  json.url player_tryout_url(player_tryout, format: :json)
end
