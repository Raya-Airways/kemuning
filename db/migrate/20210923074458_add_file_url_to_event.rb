class AddFileUrlToEvent < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :file_url, :string
  end
end
