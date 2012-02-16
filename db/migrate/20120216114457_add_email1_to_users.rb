class AddEmail1ToUsers < ActiveRecord::Migration
  def change
    add_column :users, :email1, :string

  end
end
