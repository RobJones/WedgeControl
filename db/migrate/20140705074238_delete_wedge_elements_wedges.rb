class DeleteWedgeElementsWedges < ActiveRecord::Migration
  def change
    drop_table :wedge_elements_wedges
  end
end
