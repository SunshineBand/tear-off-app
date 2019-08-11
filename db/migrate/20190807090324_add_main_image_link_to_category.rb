class AddMainImageLinkToCategory < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :main_image_link, :string
  end
end
