json.array!(@ducks) do |duck|
  json.extract! duck, :id, :name, :description, :price, :slug, :main_image, :paypal_email
  json.url duck_url(duck, format: :json)
end
