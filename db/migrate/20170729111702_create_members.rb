class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.string :name
      t.string :phone
      t.string :rent

      t.timestamps
    end
  end
end
