class AddNrodocToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nrodoc, :string

  end
end
