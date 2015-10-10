json.array!(@polls) do |poll|
  json.extract! poll, :id, :aasm_state, :product_id
  json.url poll_url(poll, format: :json)
end
