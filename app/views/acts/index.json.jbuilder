json.array!(@acts) do |act|
  json.extract! act, :id
  json.url act_url(act, format: :json)
end
