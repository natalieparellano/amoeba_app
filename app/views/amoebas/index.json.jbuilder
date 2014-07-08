json.array!(@amoebas) do |amoeba|
  json.extract! amoeba, :id
  json.url amoeba_url(amoeba, format: :json)
end
