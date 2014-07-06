class AddOutputWedgeToWedgeElements < ActiveRecord::Migration
  def change
    add_reference :wedge_elements, :output_wedge
  end
end
