class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.references :car, null: false, foreign_key: true
      t.references :salesperson, null: false, foreign_key: true

      t.timestamps
    end
  end
end
