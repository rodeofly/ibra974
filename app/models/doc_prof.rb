class DocProf < ActiveRecord::Base
  belongs_to :activite
  extend Enumerize
  
  serialize :domaines
  serialize :materiels
  
  enumerize :level_id, in: {'Indiquer le niveau' => nil, '*' => 1, '**' => 2, '***' => 3}
  enumerize :domaines, in: [ ['Indiquer les domaines' , nil], [ 'Corps' , 1], ['santé' , 2], ['bien-être et sécurité' , 3], ['Culture et création artistiques' , 4], ['Transition écologique et développement durable' , 5], ['Information' , 6], ['communication et citoyenneté' , 7], ['Langues et culture de l’antiquité' , 8], ['Sciences' , 9], ['technologie et société' , 10], ['Orientation-Métiers' , 11], ['Culture générale' , 12] ], multiple: true
  
  enumerize :materiels, in: [ ['Ordinateur, Tablette ou Smartphone équipés d’un lecteur vidéo (I-nigma, QR-scanner,…)' , 1], ['outils numériques dédiés aux mathématiques', 2], ['dictionnaire', 3], ['Accès internet', 4], ['Fiche élève de l’activité', 5] ], multiple: true


  rails_admin do 
    edit do
      # For RailsAdmin >= 0.5.0
      field :competences, :ck_editor
      field :organisation, :ck_editor
      # For RailsAdmin < 0.5.0
      # field :description do
      #   ckeditor true
      # end
    end
    
  end
  
  def get_domaines
    d = self.domaines.map { |r| self.domaines_enum.rassoc(r)[0] }
    return d
  end
  
  def get_materiels
    d = self.materiels.map { |r| self.materiels_enum.rassoc(r)[0] }
    return d
  end
 
end
