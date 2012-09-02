class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :name
      t.string :description
      t.has_attached_file :upload
      t.timestamps
    end
  end
end
