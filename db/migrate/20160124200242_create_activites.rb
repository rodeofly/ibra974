class CreateActivites < ActiveRecord::Migration
  def change
    create_table :activites do |t|
      t.string :title
      t.datetime :schedule_at
      t.integer :level_id
      t.integer :categorie_id
      t.integer :archetype_id
      t.string :url
      t.integer :citation_id
      t.text :enonce
      t.integer :doc1_id
      t.integer :doc2_id
      t.integer :docProf_id
      t.integer :docEval_id

      t.timestamps null: false
    end
  end
end
