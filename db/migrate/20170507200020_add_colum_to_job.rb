class AddColumToJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :jobName, :string
  end
end
