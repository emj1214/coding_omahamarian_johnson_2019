class IdentifyBook < ActiveRecord::Migration[5.1]
  def change
    add_column :bookids, :code_id, :int
  end
end
