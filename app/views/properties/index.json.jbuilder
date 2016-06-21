json.array!(@properties) do |property|
  json.extract! property, :id, :address, :price, :description, :rooms, :toilets, :floors, :total_area, :house_area, :pool, :furnished, :parking, :cellar, :house, :apartment, :terreain, :common_expenses, :district, :city
  json.url property_url(property, format: :json)
end
