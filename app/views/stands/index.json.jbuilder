json.array!(@stands) do |stand|
  json.extract! stand, :id, :organisation_id, :name, :address, :postalcode, :longitude, :latitude
  json.url stand_url(stand, format: :json)
end
