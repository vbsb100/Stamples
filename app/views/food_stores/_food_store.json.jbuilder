json.extract! food_store, :id, :name, :zipCode, :city, :streetAddress, :openHours, :closeHours, :created_at, :updated_at
json.url food_store_url(food_store, format: :json)
