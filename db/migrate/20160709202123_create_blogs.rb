class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.text :body
      t.string :title

      t.timestamps null: false
    end
    add_index :blogs, :title
  end
end
