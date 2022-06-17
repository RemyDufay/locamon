class DropType < ActiveRecord::Migration[6.1]
  def change
    drop_table :types
  end
end
