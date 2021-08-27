class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.integer  :task_id
      t.string   :code
      t.integer  :sequence
      t.integer  :position_id
      t.string   :owner
      t.string   :title
      t.text     :description
      t.string   :url

      t.integer :created_by
      t.integer :updated_by
      t.timestamps
    end
  end
end
