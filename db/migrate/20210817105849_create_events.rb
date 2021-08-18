class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.integer  :task_id
      t.integer  :position_id
      t.integer  :sequence
      t.string   :description
      t.string   :steps
      t.timestamps
    end
  end
end
