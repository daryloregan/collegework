class CreateJobapps < ActiveRecord::Migration
  def change
    create_table :jobapps do |t|
      t.integer :student_id
      t.integer :job_id

      t.timestamps null: false
    end
  end
end
