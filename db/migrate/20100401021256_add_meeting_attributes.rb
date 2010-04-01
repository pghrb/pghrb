class AddMeetingAttributes < ActiveRecord::Migration
  def self.up
    add_column :meetings, :name, :string
    add_column :meetings, :date, :datetime
    add_column :meetings, :description, :string
    add_column :meetings, :image_file_name, :string
  end

  def self.down
    remove_column :meetings, :name
    remove_column :meetings, :image_file_name
    remove_column :meetings, :description
    remove_column :meetings, :date
  end
end
