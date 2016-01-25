class CreateCitations < ActiveRecord::Migration
  def change
    create_table :citations do |t|
      t.text :quote
      t.string :author

      t.timestamps null: false
    end
  end
end
