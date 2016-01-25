class CreateLineItems < ActiveRecord::Migration
  def change
     create_table :line_items do |t|
       t.belongs_to :order, index: true
       t.integer :Amount
    end
  end
end
