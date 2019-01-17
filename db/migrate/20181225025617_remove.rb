class Remove < ActiveRecord::Migration[5.1]
  def change
    remove_column :students, :password
    remove_column :teachers, :password
    drop_table :books
    drop_table :lessons
  end
end
