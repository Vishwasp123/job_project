class CreateMyJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :my_jobs do |t|

      t.timestamps
    end
  end
end
