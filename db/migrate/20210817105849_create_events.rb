class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.integer  :sequence
      t.integer  :task_id
      t.integer  :position_id
      t.string   :description
      t.string   :steps
      t.timestamps
    end
  end
end
