class AddDistritoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :distrito, :string

  end
end
