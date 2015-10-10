class CreateDrops < ActiveRecord::Migration
  def change
    create_table :drops do |t|
      t.datetime :end_at
      t.string :aasm_state
      t.belongs_to :product, index: true

      t.timestamps null: false
    end
    add_foreign_key :drops, :products
  end
end
