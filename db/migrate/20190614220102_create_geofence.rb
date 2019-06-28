class CreateGeofence < ActiveRecord::Migration[5.0]
  def change
    create_table :geofences do |t|
      t.string :latitude
      t.string :longitude
      t.string :radius
    end
  end
end
