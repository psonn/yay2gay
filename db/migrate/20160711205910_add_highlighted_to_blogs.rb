class AddHighlightedToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :highlighted, :boolean
  end
end
