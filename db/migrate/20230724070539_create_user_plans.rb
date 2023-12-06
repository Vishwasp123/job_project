class CreateUserPlans < ActiveRecord::Migration[7.0]
  def change
    create_table :user_plans do |t|
      t.integer :plan_id
      t.integer :user_id
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
