json.array!(@listings) do |listing|
  json.extract! listing, :id, :title, :ISBN, :price, :description, :condition
  json.url listing_url(listing, format: :json)
end
