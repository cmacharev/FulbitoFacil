class AddTipidenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :tipiden, :string

  end
end
