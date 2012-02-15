class AddLongitudeToLocals < ActiveRecord::Migration
  def change
    add_column :locals, :longitude, :float

  end
end
