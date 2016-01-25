class Activite < ActiveRecord::Base
  belongs_to :citation

 extend Enumerize

 enumerize :level_id, in: {'Indiquer le niveau' => nil, '*' => 1, '**' => 2, '***' => 3}
 enumerize :categorie_id, in: {'Indiquer la catégorie' => nil, 'Algorithme' => 1, 'Codage' => 2, '***' => 3}
 enumerize :archetype_id, in: {'Indiquer le type' => nil, 'Tâche complexe' => 1, 'Situation-Problème' => 2, 'Problème ouvert' => 3}
 
 
  
end
