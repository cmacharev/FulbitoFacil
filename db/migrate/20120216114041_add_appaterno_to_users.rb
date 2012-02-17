class AddAppaternoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :appaterno, :string

  end
end
