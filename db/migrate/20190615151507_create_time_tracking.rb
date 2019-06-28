class CreateTimeTracking < ActiveRecord::Migration[5.0]
  def change
    create_table :time_trackings do |t|
      t.string :comment
      t.string :latitude
      t.string :longitude
      t.datetime :time
    end
  end
end
