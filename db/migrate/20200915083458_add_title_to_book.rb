class AddTitleToBook < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :title, :string
    add_column :books, :body, :text
    remove_column :books, :本のタイトル, :string
    remove_column :books, :感想, :text
  end
end
