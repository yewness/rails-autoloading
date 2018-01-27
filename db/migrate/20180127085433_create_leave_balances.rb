class CreateLeaveBalances < ActiveRecord::Migration[5.1]
  def change
    create_table :leave_balances do |t|
      t.references :user, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.string :leave_type
      t.float :days_entitled, default: 0
      t.integer :entitled_policy, default: 0
      t.float :allowable_encashed, default: 0
      t.integer :encashed_policy, default: 0
      t.integer :days_carry_forward, default: 0
      t.timestamps
    end
  end
end
