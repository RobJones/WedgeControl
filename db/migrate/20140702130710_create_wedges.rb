class CreateWedges < ActiveRecord::Migration
  def change
    create_table :wedges do |t|
      t.string :input_type
      t.string :output_type
      t.string :title
      t.boolean :handles_list?

      t.timestamps
    end
  end
end
