json.array!(@ideas) do |idea|
  json.extract! idea, :id, :title, :description, :category, :tags
  json.url idea_url(idea, format: :json)
end
