class AddImageLinkToProject < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :image_link, :string
  end
end
