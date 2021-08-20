class CreatePositions < ActiveRecord::Migration[6.1]
  def change
    create_table :positions do |t|
      t.integer :code
      t.integer :parent_id
      t.string :name
      t.string :mission

      t.integer :created_by
      t.integer :updated_by
      t.timestamps
    end
  end
end
