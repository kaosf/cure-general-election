class CreateVotes < ActiveRecord::Migration[4.2]
  def change
    create_table :votes do |t|
      t.references :user, index: true
      t.references :election, index: true
      t.integer :body, null: false

      t.timestamps
    end
  end
end
