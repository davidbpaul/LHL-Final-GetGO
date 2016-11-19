class RemoveTimestampsFromAgency < ActiveRecord::Migration[5.0]
  def change
    remove_column :agencies, :created_at, :string
    remove_column :agencies, :updated_at, :string
  end
end
