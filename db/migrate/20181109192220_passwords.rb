class Passwords < ActiveRecord::Migration[5.1]
  def change
    add_column(:teachers, :password, :string)
    add_column(:students, :password, :string)
  end
end
