class AddDirecToUsers < ActiveRecord::Migration
  def change
    add_column :users, :direc, :string

  end
end
