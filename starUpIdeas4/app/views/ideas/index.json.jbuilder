json.array!(@ideas) do |idea|
  json.extract! idea, :id, :title, :description, :industry, :tags
  json.url idea_url(idea, format: :json)
end
