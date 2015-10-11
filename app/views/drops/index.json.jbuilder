json.array!(@drops) do |drop|
  json.extract! drop, :id, :end_at, :aasm_state, :product_id
  json.url drop_url(drop, format: :json)
end
