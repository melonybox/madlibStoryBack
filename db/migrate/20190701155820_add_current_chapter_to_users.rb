class AddCurrentChapterToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :current_chapter, :string
  end
end
