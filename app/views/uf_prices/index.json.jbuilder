json.array!(@uf_prices) do |uf_price|
  json.extract! uf_price, :id, :uf_price
  json.url uf_price_url(uf_price, format: :json)
end
