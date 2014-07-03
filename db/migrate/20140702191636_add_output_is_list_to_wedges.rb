class AddOutputIsListToWedges < ActiveRecord::Migration
  def change
    add_column :wedges, :output_is_list?, :boolean
  end
end
