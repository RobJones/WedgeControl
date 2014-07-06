class ChangeWedgeElementsWedgesAgain < ActiveRecord::Migration
  def change
    remove_column :wedge_elements_wedges, :wedge_id_id
    add_reference :wedge_elements_wedges, :wedge
    remove_column :wedge_elements_wedges, :wedge_element_id_id
    add_reference :wedge_elements_wedges, :wedge_element
  end
end
