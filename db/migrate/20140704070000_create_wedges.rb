class CreateWedges < ActiveRecord::Migration
  def change
    create_table :wedges do |t|
      t.string :title
      t.references :input_type
      t.references :output_type
      t.text :description

      t.timestamps
    end
  end
end
