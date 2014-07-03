json.array!(@wedges) do |wedge|
  json.extract! wedge, :id, :input_type, :output_type, :title, :handles_list?
  json.url wedge_url(wedge, format: :json)
end
