class Bookids < ActiveRecord::Migration[5.1]
  def change
    create_table :bookids do |t|
      t.string :uniqueid
    end
  end
end
