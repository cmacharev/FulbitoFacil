class AddLatitudeToLocals < ActiveRecord::Migration
  def change
    add_column :locals, :latitude, :float

  end
end
