class BookStudent < ActiveRecord::Migration[5.1]
  def change
    drop_table :bookids
    create_table(:bookids) do |t|
      t.belongs_to :student
      t.belongs_to :livre
      t.string :uniqueid
    end
  end
end
