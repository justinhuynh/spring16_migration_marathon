class CreateCategorizations < ActiveRecord::Migration
  def change
    create_table :categorizations do |table|
      table.integer :category_id, null: false
      table.integer :book_id, null: false
    end
  end
end
