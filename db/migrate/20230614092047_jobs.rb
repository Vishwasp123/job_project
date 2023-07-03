class Jobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :employee_type
      t.string :location_type
      t.string :salary
      t.string :link_to_apply
      t.text :description
      t.integer :max_position
      t.string :qualification
      t.references :job_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
