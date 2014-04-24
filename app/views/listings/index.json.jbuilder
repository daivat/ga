json.array!(@listings) do |listing|
  json.extract! listing, :id, :title, :description, :location, :contact, :date
  json.url listing_url(listing, format: :json)
end
