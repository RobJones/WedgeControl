json.array!(@wedge_elements) do |wedge_element|
  json.extract! wedge_element, :id
  json.url wedge_element_url(wedge_element, format: :json)
end
