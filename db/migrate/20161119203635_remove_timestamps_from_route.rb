class RemoveTimestampsFromRoute < ActiveRecord::Migration[5.0]
  def change
    remove_column :routes, :created_at, :string
    remove_column :routes, :updated_at, :string
  end
end
