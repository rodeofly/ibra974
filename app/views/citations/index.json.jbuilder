json.array!(@citations) do |citation|
  json.extract! citation, :id, :quote, :author
  json.url citation_url(citation, format: :json)
end
