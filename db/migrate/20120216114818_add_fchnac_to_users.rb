class AddFchnacToUsers < ActiveRecord::Migration
  def change
    add_column :users, :fchnac, :date

  end
end
