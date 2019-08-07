class AddImageLinkToCategory < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :image_link, :string
  end
end
