class CreateLeaveTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :leave_types do |t|
      t.string :name
      t.float :days_entitled, default: 0
      t.timestamps
    end
  end
end
