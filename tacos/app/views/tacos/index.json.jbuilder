json.array!(@tacos) do |taco|
  json.extract! taco, :id, :name, :ingredients, :photo_url, :delicious
  json.url taco_url(taco, format: :json)
end
