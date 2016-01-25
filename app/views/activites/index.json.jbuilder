json.array!(@activites) do |activite|
  json.extract! activite, :id, :title, :schedule_at, :level_id, :categorie_id, :archetype_id, :url, :citation_id, :enonce, :doc1_id, :doc2_id, :docProf_id, :docEval_id
  json.url activite_url(activite, format: :json)
end
