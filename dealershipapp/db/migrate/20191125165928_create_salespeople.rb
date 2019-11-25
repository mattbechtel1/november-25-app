class CreateSalespeople < ActiveRecord::Migration[6.0]
  def change
    create_table :salespeople do |t|
      t.string :name

      t.timestamps
    end
  end
end
