class AddPaperclipFieldsToFleet < ActiveRecord::Migration[5.2]
  def change
    add_column :fleets, :image_file_name,    :string
    add_column :fleets, :image_content_type, :string
    add_column :fleets, :image_file_size,    :integer
    add_column :fleets, :image_updated_at,   :datetime
  end
end
