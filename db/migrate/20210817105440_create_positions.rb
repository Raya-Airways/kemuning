class CreatePositions < ActiveRecord::Migration[6.1]
  def change
    create_table :positions do |t|
      t.integer :code
      t.integer :parent_id
      t.string :name
      t.string :mission

      t.timestamps
    end
  end
end
