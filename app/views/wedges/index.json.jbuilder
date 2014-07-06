json.array!(@wedges) do |wedge|
  json.extract! wedge, :id, :title, :input_type, :output_type, :description
  json.url wedge_url(wedge, format: :json)
end
