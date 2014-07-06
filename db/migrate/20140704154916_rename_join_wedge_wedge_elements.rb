class RenameJoinWedgeWedgeElements < ActiveRecord::Migration
  def change
    rename_table :join_wedge_wedge_elements, :wedge_elements_wedges
  end
end
