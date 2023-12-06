class AddForeignKeyInUser < ActiveRecord::Migration[7.0]
  def change
        add_reference :users, :plan ,foreign_key: true
  end
end
