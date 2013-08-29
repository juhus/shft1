class CreateWidgets < ActiveRecord::Migration
  def change
    create_table :widgets do |t|
      t.string :title
      t.text :description
      t.text :content
      t.integer :width
      t.integer :height

      t.timestamps
    end
  end
end
