class CreateDfiles < ActiveRecord::Migration
  def change
    create_table :dfiles do |t|
      t.string :filename
      t.string :store
      t.references :major

      t.timestamps
    end
    add_index :dfiles, :major_id
  end
end
