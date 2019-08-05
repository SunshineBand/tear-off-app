class AddAddressToFlyer < ActiveRecord::Migration[5.2]
  def change
    add_column :flyers, :address, :text
  end
end
