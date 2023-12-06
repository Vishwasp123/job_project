class RemovePlanIdInUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :users , :plan_id
  end
end
 