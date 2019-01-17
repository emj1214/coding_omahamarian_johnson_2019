class RemoveUniqueid < ActiveRecord::Migration[5.1]
  def change
    remove_column :bookids, :uniqueid
  end
end
