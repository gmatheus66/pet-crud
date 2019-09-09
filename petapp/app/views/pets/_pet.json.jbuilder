json.extract! pet, :id, :nome, :raca, :peso, :created_at, :updated_at
json.url pet_url(pet, format: :json)
