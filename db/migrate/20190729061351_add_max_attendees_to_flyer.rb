class AddMaxAttendeesToFlyer < ActiveRecord::Migration[5.2]
  def change
    add_column :flyers, :max_attendees, :integer
  end
end
