class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.string :name
      t.text :description
      t.references :sprint, null: false, foreign_key: true
      t.integer :point_estimate
      t.datetime :dev_begin_at
      t.datetime :dev_end_at
      t.datetime :merged_at
      t.integer :bounces

      t.timestamps
    end
  end
end
