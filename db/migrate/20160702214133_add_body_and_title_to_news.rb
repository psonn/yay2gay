class AddBodyAndTitleToNews < ActiveRecord::Migration
  def change
    add_column :news, :body, :text
    add_column :news, :title, :string
    add_index :news, :title
  end
end
