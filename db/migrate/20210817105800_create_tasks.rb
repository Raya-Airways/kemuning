class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string  :task_code
      t.integer :position_id
      t.string  :description

      t.timestamps
    end
  end
end
