class CreateFlyers < ActiveRecord::Migration[5.2]
  def change
    create_table :flyers do |t|
      t.string :title
      t.float :cost
      t.text :info
      t.time :time
      t.date :date_of_event
      t.references :user, foreign_key: true
      t.references :project, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
