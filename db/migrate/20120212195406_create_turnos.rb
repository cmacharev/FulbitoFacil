class CreateTurnos < ActiveRecord::Migration
  def change
    create_table :turnos do |t|
      t.string :name

      t.timestamps
    end
  end
end
