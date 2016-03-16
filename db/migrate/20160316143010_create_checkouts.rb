class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.integer :book_id, null: false
      t.date :due_date, null: false
      t.string :borrower, null: false
    end
  end
end
