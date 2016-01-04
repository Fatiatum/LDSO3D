json.array!(@experiences) do |experience|
  json.extract! experience, :id, :program_type, :package_type, :description_pt, :description_en, :price, :Product_id
  json.url experience_url(experience, format: :json)
end
