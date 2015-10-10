class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.string :aasm_state
      t.belongs_to :product, index: true

      t.timestamps null: false
    end
    add_foreign_key :polls, :products
  end
end
