class ChangeWedgeElementsWedges < ActiveRecord::Migration
  def change
    remove_column :wedge_elements_wedges, :wedge
    add_reference :wedge_elements_wedges, :wedge_id
    remove_column :wedge_elements_wedges, :wedge_element
    add_reference :wedge_elements_wedges, :wedge_element_id
  end
end
