class CreateQueryableObjects < ActiveRecord::Migration
  def change
    create_table :queryable_objects do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
