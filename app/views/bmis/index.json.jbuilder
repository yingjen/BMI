json.array!(@bmis) do |bmi|
  json.extract! bmi, :id, :name, :height, :weight
  json.url bmi_url(bmi, format: :json)
end
