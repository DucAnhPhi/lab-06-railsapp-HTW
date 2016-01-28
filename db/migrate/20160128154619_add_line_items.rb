class AddLineItems < ActiveRecord::Migration
  def change
    create_table :lineItems do |t|
      t.belongs_to :orders, index: true
      t.belongs_to :pumpkins, index: true
      t.integer :amount

      t.timestamps
    end
  end
end
