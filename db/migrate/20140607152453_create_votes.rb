class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :user, index: true
      t.references :election, index: true
      t.integer :body

      t.timestamps
    end
  end
end
