class AddIsadmToUsers < ActiveRecord::Migration
  def change
    add_column :users, :isadm, :string

  end
end
