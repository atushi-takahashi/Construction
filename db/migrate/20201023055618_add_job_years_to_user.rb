class AddJobYearsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :job_years, :integer
  end
end
