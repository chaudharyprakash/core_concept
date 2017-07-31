class CreateRents < ActiveRecord::Migration[5.0]
  def change
    create_table :rents do |t|
      t.integer :amount
      t.integer :user_id
      t.string  :status, default: 'pending'
      t.timestamps
    end
  end
end
