class AddReadersToCheckouts < ActiveRecord::Migration
  def up
    add_column :checkouts, :reader_id, :integer

    Checkout.all.each do |checkout|
      name = checkout.borrower
      reader = Reader.find_by(full_name: name)
      checkout.reader = reader
      checkout.save!
    end

    change_column :checkouts, :reader_id, :integer, null: false
    remove_column :checkouts, :borrower
  end

  def down
    add_column :checkouts, :borrower, :string

    Checkout.all.each do |checkout|
      reader = checkout.reader
      name = reader.full_name
      checkout.borrower = name
      checkout.save!
    end

    change_column :checkouts, :borrower, :string, null: false
    remove_column :checkouts, :reader_id
  end
end
