class CreateExpenseEntries < ActiveRecord::Migration
  def change
    create_table :expense_entries do |t|
      t.string :desc
      t.datetime :entry_date
      t.decimal :total_amount
      t.integer :who_paid
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
