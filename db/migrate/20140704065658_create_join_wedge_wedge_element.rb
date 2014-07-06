class CreateJoinWedgeWedgeElement < ActiveRecord::Migration
  def change
    create_table :join_wedge_wedge_elements do |t|
      t.string :wedge
      t.string :wedge_element
    end
  end
end
