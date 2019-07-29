class CreateFlyerAttendedByUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :flyer_attended_by_users do |t|
      t.references :user, foreign_key: true
      t.references :flyer, foreign_key: true

      t.timestamps
    end
  end
end
