class RemoveDoc1FromActivite < ActiveRecord::Migration

  def change
    remove_column :activites, :doc1_id
    remove_column :activites, :doc2_id
    
    add_column :activites, :image1_uid, :string
    add_column :activites, :image2_uid, :string 
    add_column :activites, :image3_uid, :string 
    
  end
end
