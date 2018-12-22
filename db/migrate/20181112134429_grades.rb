class Grades < ActiveRecord::Migration[5.1]
  def change
    add_column(:students, :grade, :int)
  end
end
