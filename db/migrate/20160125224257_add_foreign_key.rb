class AddForeignKey < ActiveRecord::Migration
  def change
    add_index :orders, :customer_id
  end
end
