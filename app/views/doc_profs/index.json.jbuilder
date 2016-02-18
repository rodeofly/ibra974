json.array!(@doc_profs) do |doc_prof|
  json.extract! doc_prof, :id, :activite_id, :level_id, :domaines, :materiels, :prerequis, :competences, :organisation, :aide
  json.url doc_prof_url(doc_prof, format: :json)
end
