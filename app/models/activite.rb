class Activite < ActiveRecord::Base
  belongs_to :citation
  belongs_to :doc_prof
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
      field :title
      field :level_id
      field :categorie_id
      field :archetype_id
      field :enonce
      field :image1
      field :image2
      field :image3
      field :schedule_at do
        strftime_format '%d %B %Y à %Hh%M'
      end
      field :doc_prof_id
    end
    
    edit do
      field :title
      field :level_id
      field :categorie_id
      field :archetype_id
      field :enonce, :ck_editor
      field :image1
      field :image2
      field :image3
      field :schedule_at do
        strftime_format '%d-%m-%Y %H:%M'
      end
      field :doc_prof
    end
  end
 
  
end
