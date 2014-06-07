class CreateElections < ActiveRecord::Migration
  def change
    create_table :elections do |t|
      t.string :name,              null: false
      t.integer :candidates_total, null: false

      t.timestamps
    end
  end
end
