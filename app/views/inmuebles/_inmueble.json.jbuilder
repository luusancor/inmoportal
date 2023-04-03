json.extract! inmueble, :id, :address, :price, :rooms, :bathrooms, :area, :description, :created_at, :updated_at
json.url inmueble_url(inmueble, format: :json)
