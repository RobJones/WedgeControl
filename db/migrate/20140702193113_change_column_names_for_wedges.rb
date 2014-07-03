class ChangeColumnNamesForWedges < ActiveRecord::Migration
  def change
    rename_column :wedges, :handles_list?, :handles_lists
    rename_column :wedges, :output_is_list?, :output_is_list
  end
end
