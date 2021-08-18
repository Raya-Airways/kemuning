class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :description
      t.string :findings
      t.string :risks
      t.string :recommendations

      t.timestamps
    end
  end
end
