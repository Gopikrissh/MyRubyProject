json.array!(@tryouts) do |tryout|
  json.extract! tryout, :id, :date, :fee, :address1, :address2, :city, :state, :zip
  json.url tryout_url(tryout, format: :json)
end
