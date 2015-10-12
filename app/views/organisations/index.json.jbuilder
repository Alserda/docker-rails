json.array!(@organisations) do |organisation|
  json.extract! organisation, :id, :email, :password, :password_confirmation
  json.url organisation_url(organisation, format: :json)
end
