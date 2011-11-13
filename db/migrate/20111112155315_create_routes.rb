class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :route_id
      t.string :route_name
      t.string :default_driver_id
      t.string :driver_message
      t.string :d_user
      t.string :terminal

      t.timestamps
    end
  end
end
