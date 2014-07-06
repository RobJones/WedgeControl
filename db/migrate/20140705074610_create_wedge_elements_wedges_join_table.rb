class CreateWedgeElementsWedgesJoinTable < ActiveRecord::Migration
  def change
    create_table :wedge_elements_wedges, id: false do |t|
      t.belongs_to :wedge_element
      t.belongs_to :wedge
    end
  end
end
