class CreateLeaveSettings < ActiveRecord::Migration[5.1]
  def change
    create_table :leave_settings do |t|
      t.string :name
      t.timestamps
    end
  end
end
