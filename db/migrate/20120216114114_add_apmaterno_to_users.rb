class AddApmaternoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :apmaterno, :string

  end
end
