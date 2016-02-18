class CreateDocProfs < ActiveRecord::Migration
  def change
    create_table :doc_profs do |t|
      t.integer :activite_id
      t.integer :level_id
      t.text :domaines
      t.text :materiels
      t.text :prerequis
      t.text :competences
      t.text :organisation
      t.text :aide

      t.timestamps null: false
    end
  end
end
