class AddForeignKeyInPlans < ActiveRecord::Migration[7.0]
  def change
    add_reference :plans, :plan, index: true , foreign_key: true
    add_reference :plans, :user, index: true, foreign_key:true  
  end
end
