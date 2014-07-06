class RenameWedgesToWedgeElements < ActiveRecord::Migration
  def change
    rename_table :wedges, :wedge_elements
  end
end
