class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :activites, :docProf_id, :doc_prof_id
    rename_column :activites, :docEval_id, :doc_eval_id
  end
end
