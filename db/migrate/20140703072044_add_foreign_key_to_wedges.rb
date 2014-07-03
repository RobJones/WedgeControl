class AddForeignKeyToWedges < ActiveRecord::Migration
  def change
    remove_column :wedges, :input_type
    add_reference :wedges, :input_type
    remove_column :wedges, :output_type
    add_reference :wedges, :output_type
  end
end
