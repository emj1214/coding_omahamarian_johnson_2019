class Livres < ActiveRecord::Migration[5.1]
  def change
    create_table :livres do |t|
      t.string :title
    end
  end
end
