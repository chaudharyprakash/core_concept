class CreateExtraExpenses < ActiveRecord::Migration[5.0]
  def change
    create_table :extra_expenses do |t|
      t.string :name
      t.string :amount
      t.integer :user_id

      t.timestamps
    end
  end
end
