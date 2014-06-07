class CreateElections < ActiveRecord::Migration
  def change
    create_table :elections do |t|
      t.string :name
      t.integer :candidates_total

      t.timestamps
    end
  end
end
