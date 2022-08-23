class CreateElections < ActiveRecord::Migration[4.2]
  def change
    create_table :elections do |t|
      t.string :name,              null: false
      t.integer :candidates_total, null: false

      t.timestamps
    end
  end
end
