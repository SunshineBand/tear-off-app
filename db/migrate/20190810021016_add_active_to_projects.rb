class AddActiveToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :active, :boolean
  end
end
