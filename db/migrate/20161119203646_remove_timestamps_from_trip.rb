class RemoveTimestampsFromTrip < ActiveRecord::Migration[5.0]
  def change
    remove_column :trips, :created_at, :string
    remove_column :trips, :updated_at, :string
  end
end
