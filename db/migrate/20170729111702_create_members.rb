class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.string :amount
      t.boolean :status, default: false
      t.timestamps
    end
  end
end
