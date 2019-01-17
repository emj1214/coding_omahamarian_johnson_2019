class AddBookLink < ActiveRecord::Migration[5.1]
  def change
    add_column :livres, :book_link, :string
  end
end
