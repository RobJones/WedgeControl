json.array!(@queryable_objects) do |queryable_object|
  json.extract! queryable_object, :id, :name, :description
  json.url queryable_object_url(queryable_object, format: :json)
end
