class AddPrice < ActiveRecord::Migration
  def change
  change_table :orders do |t|
    t.decimal :price
  end
end
