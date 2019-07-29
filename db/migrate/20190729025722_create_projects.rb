class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.text :name
      t.float :balance_raised

      t.timestamps
    end
  end
end
