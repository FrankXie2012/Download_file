class RemoveFilenameFromDfiles < ActiveRecord::Migration
  def up
    remove_column :dfiles, :filename
  end

  def down
    add_column :dfiles, :filename, :string
  end
end
