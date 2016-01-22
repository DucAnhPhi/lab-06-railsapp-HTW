class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.belongs_to :pumpkin, index: true
      t.belongs_to :orders, index: true
      t.string :Pumpkin
      t.integer :Amount
    end
  end
end
