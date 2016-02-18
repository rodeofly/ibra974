class Activite < ActiveRecord::Base
  belongs_to :citation

  extend Enumerize

  enumerize :level_id, in: {'Indiquer le niveau' => nil, '*' => 1, '**' => 2, '***' => 3}
  enumerize :categorie_id, in: {'Indiquer la catégorie' => nil, 'Algorithme' => 1, 'Codage' => 2, '***' => 3}
  enumerize :archetype_id, in: {'Indiquer le type' => nil, 'Tâche complexe' => 1, 'Situation-Problème' => 2, 'Problème ouvert' => 3}
 
  dragonfly_accessor :image1
  dragonfly_accessor :image2
  dragonfly_accessor :image3
 
  rails_admin do 
    
    configure :schedule_at do
        strftime_format '%d-%m-%Y %H:%M'
    end
    
    list do
      field :schedule_at do
        strftime_format '%d %B %Y à %Hh%M'
      end
    end
  end
 
  
end
