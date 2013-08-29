class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :thumbnail
      t.integer :project_id

      t.timestamps
    end
  end
end
