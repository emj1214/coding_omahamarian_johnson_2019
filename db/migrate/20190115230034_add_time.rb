class AddTime < ActiveRecord::Migration[5.1]
  def change
    add_column :bookids, :created_at , :datetime
  end
end
